# nixos-overlay

[![Build Status](https://travis-ci.org/samhug/nixos-overlay.svg?branch=master)](https://travis-ci.org/samhug/nixos-overlay)


```shell
sudo nix-channel --add https://samhug.github.io/nixos-overlay
sudo nix-channel --update nixos-overlay
```

[channel index](https://samhug.github.io/nixos-overlay/)

### Notes:

Test build a package:
```
$ nix-build -E 'with import <nixpkgs> { overlays = [(import ./pkgs)]; }; pkgs.co2_logger'
```

---
This repo was modeled after https://gitlab.com/yegortimoshenko/nixos-overlay and https://github.com/jtojnar/nix-extrapkgs
