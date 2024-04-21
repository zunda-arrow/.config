#!/bin/env python

import subprocess
import json
import sys


def change_scale(scale):
    focused = (
        subprocess.run(
            "swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).output'",
            shell=True,
            capture_output=True,
        )
        .stdout.decode("utf8")
        .strip()
    )
    subprocess.run(f"swaymsg output {focused} scale {scale}", shell=True)


def scale_up():
    change_scale(1.6)


def scale_down():
    change_scale(1)


EV_SIEVE = None
CHILD_PROCESS = None


def start_evsieve():
    global EV_SIEVE
    if EV_SIEVE:
        EV_SIEVE.kill()
    EV_SIEVE = subprocess.Popen(
        [
            "evsieve",
            "--input",
            "/dev/input/by-id/usb-SINO_WEALTH_Gaming_KB-event-kbd",
            "--input",
            "/dev/input/by-id/usb-Logitech_G203_LIGHTSYNC_Gaming_Mouse_207D39845831-event-mouse",
            "grab",
            "--output",
        ]
    )


def kill_evsieve():
    global EV_SIEVE
    if EV_SIEVE:
        EV_SIEVE.kill()


def loop():
    msg = json.loads(
        subprocess.check_output(["swaymsg", "-r", "-t", "subscribe", '["window"]'])
    )

    if msg["change"] in {"focus", "fullscreen_mode"}:
        print(json.dumps(msg, indent=4))
        name = msg["container"]["name"]
        fullscreen = msg["container"]["fullscreen_mode"] == 1

        if name and "Wine desktop" in name:
            scale_down()
            start_evsieve()
        else:
            scale_up()
            kill_evsieve()


def launch_child():
    global CHILD_PROCESS
    process = sys.argv[1:]
    CHILD_PROCESS= subprocess.Popen(process)

def main():
    # launch_child()
    while True:
        # if CHILD_PROCESS.poll() != None:
        #     exit(0)
        try:
            loop()
        except Exception as e:
            print(e)


if __name__ == "__main__":
    main()
