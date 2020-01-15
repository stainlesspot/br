# br
screen brightness control script

---

This script uses the ACPI kernel module interface in `/sys/class/backlight/` and assumes an intel video card is in use.

## Usage
`./set-brightness.sh NUM`\
Set screen brightness to NUM% of maximum allowed value.

## Permissions
To use the script as non-root, you must have write permissions on `/sys/class/backlight/intel_backlight/brightness`.__
You can create an [udev rule][aw-acpi].

[aw-acpi]: https://wiki.archlinux.org/index.php/Screen_brightness#ACPI
