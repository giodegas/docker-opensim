'''
	Keeps reading hand palms position and save it to a Redis server
	inspired by LeapMotion V2.1.X samples directory
	
	Licensed with Apache Public License 2.0
	
	by Giovanni De Gasperis
	Department of Information Engineering and Computer Science and Mathematics
	University of L'Aquila, ITALY
	
'''

__author__ = 'giodegas'

LEAPM_LIB_PATH =  '/Users/giodegas/Downloads/LeapDeveloperKit_2.1.1+21671_mac/LeapSDK/lib'
import sys
sys.path.insert(0, LEAPM_LIB_PATH)

import Leap, sys, thread, time
from Leap import CircleGesture, KeyTapGesture, ScreenTapGesture, SwipeGesture, Bone
from redis import Redis
from json import dumps

DO_QUEUE = False
REDIS_IP = '192.168.10.100'

class MyListener(Leap.Listener):
    finger_names = ['Thumb', 'Index', 'Middle', 'Ring', 'Pinky']
    bone_names = ['Metacarpal', 'Proximal', 'Intermediate', 'Distal']
    state_names = ['STATE_INVALID', 'STATE_START', 'STATE_UPDATE', 'STATE_END']

    def on_init(self, controller):
        print "Initialized"

    def on_connect(self, controller):
        print "Connected"

    def on_disconnect(self, controller):
        # Note: not dispatched when running in a debugger.
        print "Disconnected"

    def on_exit(self, controller):
        print "Exited"

    def on_frame(self, controller):
        global R, c
        # Get the most recent frame and report some basic information
        frame = controller.frame()

        # Get hands
        for hand in frame.hands:
            hkey = 'LPH_LEFT' if hand.is_left else 'LPH_RIGHT'
            hQueue = hkey+':L'
            pos = hand.palm_position
            R.set(hkey+':palm_pos', (pos.x, pos.y, pos.z ) )
            if DO_QUEUE:
                R.rpush(hQueue, hand.palm_position)
                if R.llen(hQueue)>10:
                    R.lpop(hQueue)


    def state_string(self, state):
        if state == Leap.Gesture.STATE_START:
            return "STATE_START"

        if state == Leap.Gesture.STATE_UPDATE:
            return "STATE_UPDATE"

        if state == Leap.Gesture.STATE_STOP:
            return "STATE_STOP"

        if state == Leap.Gesture.STATE_INVALID:
            return "STATE_INVALID"

def main():
    # Create a sample listener and controller
    listener = MyListener()
    controller = Leap.Controller()
    controller.set_policy_flags(Leap.Controller.POLICY_BACKGROUND_FRAMES)

    # Have the sample listener receive events from the controller
    controller.add_listener(listener)

    # Keep this process running until Enter is pressed
    print "Press Enter to quit..."
    try:
        sys.stdin.readline()
    except KeyboardInterrupt:
        pass
    finally:
        # Remove the sample listener when done
        controller.remove_listener(listener)

if __name__ == "__main__":
    R = Redis(host = REDIS_IP)
    c = 0
    main()
