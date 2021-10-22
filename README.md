
# Gradwm

[Gradwm](https://github.com/samwhelp/gradwm) (Dynamic window manager for X from [Dwm](https://aur.archlinux.org/packages/dwm/))

## Subject

* [Orginal Project](#orginal-project)
* [New Project](#new-project)
* [Docs](#docs)
* [Note](#note)
* [How to Install](#how-to-install)
* [Reference](#reference)


## Orginal Project

* [dwm](https://git.suckless.org/dwm/)

``` sh
git clone git://git.suckless.org/dwm
```

## New Project

* [gradwm](https://github.com/samwhelp/gradwm)

> This project is created for [archcraft-adjustment-iso-profile](https://github.com/samwhelp/archcraft-adjustment-iso-profile/blob/main/iso-profile/openbox/adjustment-openbox-with-tint/profile/packages.x86_64#L768).

> But you can [build and install]((#how-to-install)) for yourself.

## Docs

| Spec |
| --- |
| [keybind](asset/usr/share/gradwm/docs/spec-keybind.md) |
| [mousebind](asset/usr/share/gradwm/docs/spec-mousebind.md) |
| [xsession](asset/usr/share/gradwm/docs/spec-boot.md) |


## Note

### transparent: dwm bar

set [picom.conf](asset/usr/share/gradwm/config/gradwm/share/style-profile/main/picom/picom.conf#L231)

```
  "90:class_g     = 'dwm'",
  "90:class_g     = 'dwmsystray'",
```

use `xprop` to find WM_CLASS

```
WM_CLASS(STRING) = "dwm", "dwm"
```

```
WM_CLASS(STRING) = "dwmsystray", "dwmsystray"
```

### keysymdef

run

``` sh
pacman -Ql | grep keysymdef.h
```

show

```
python-xlib /usr/lib/python3.9/site-packages/Xlib/keysymdef/hebrew.py
xorgproto /usr/include/X11/keysymdef.h
```

run

``` sh
less /usr/include/X11/keysymdef.h
```


run

```
grep 'XK_Return' /usr/include/X11/keysymdef.h
```


## How to Install

### Clone

``` sh
git clone https://github.com/samwhelp/gradwm.git
```

### Cd Work Dir

``` sh
cd gradwm
```

### Prepare Build Essential

run to install [base-devel](https://archlinux.org/groups/x86_64/base-devel/)

``` sh
make prepare
```

### Build Package

run to build package

``` sh
make build
```

or run

``` sh
./build.sh
```

### Install Package


run to install package

``` sh
make install
```

or run

``` sh
make reinstall
```

### List Package Files

run to show package files

``` sh
make list
```

### Uninstall

run to uninstall package

``` sh
make uninstall
```

### Clean

run to clean some file after build

``` sh
make clean
```


## Reference

* https://wiki.archlinux.org/title/Creating_packages
* https://wiki.archlinux.org/title/Arch_User_Repository
* https://archlinux.org/groups/x86_64/base-devel/
* https://wiki.archlinux.org/title/pacman
* https://wiki.archlinux.org/title/makepkg
* https://wiki.archlinux.org/title/PKGBUILD
* https://wiki.archlinux.org/title/Arch_package_guidelines
