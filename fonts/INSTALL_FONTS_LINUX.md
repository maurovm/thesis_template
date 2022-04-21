
# Carlito font installation for Linux


Modern Linux distributions have the Carlito font already installed in the system.
For Fedora 29 and above, you can install it with the following command:

```shell
$ sudo dnf install texlive-carlito
```
For Ubuntu 18.04, you can install the font by executing the following command:

```shell
$ sudo apt-get install texlive-fonts-extra
```

## Manual font installation


If your linux distribution does not provide the Carlito font, you can install
it by executing the following commands in the terminal:

```shell
$ mkdir -p ~/.fonts
$ rsync -avtP fonts/ ~/.fonts/
```

Afterwards, you will need to update the font cache by executing:

```shell
$ fc-cache -fv
$ luaotfload-tool -vvv --update --force
```
