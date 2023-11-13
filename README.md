# ░░▒▒▓▓██ILLUMINATE
## Screen brightness utility for Linux Desktop

Illuminate is a simple Bash script designed to provide easy control over screen brightness on Linux desktops.

The script uses xrandr to adjust brightness and was created out of the need for a straightforward brightness control solution on Linux desktops where this feature might not be as easily accessible as on laptops.

## Features

- Supports multiple monitors.
- Uses xrandr for screen brightness control.
- Designed for Linux desktop environments using X Window System.

## Dependencies
* Linux system
* git

## Installation and execution
* Open terminal and type the following commands
```
git clone https://github.com/dlimon2/illuminate.git
cd illuminate
chmod +x illuminate.sh
./illuminate.sh <brightness> (value between 0.0 and 1.0)
```

## Usage example
Setting screen brightness to 80%:
```
./illuminate.sh 0.8
```
## Notes
* Illuminate uses xrandr for brightness control.
* Ensure that xrandr is available on your system.
* In some cases, Illuminate might not work if the display driver or hardware does not support the xrandr method for brightness adjustment.
* Feel free to contribute or report issues.

## <a href="https://x.com/dlimon2" target="_blank">Follow me on Twitter!</a>



