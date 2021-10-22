<div align="right">
    <img src="https://img.shields.io/static/v1?label=Language&message=Python&color=blue&style=flat-square"/>
    <a href="./LICENSE"><img src="https://img.shields.io/static/v1?label=License&message=Unlicense&color=darkgray&style=flat-square"/></a>
</div>

<div align="center"><h1>🐍 pywebsh</h1></div>

<div align="center">
    
A small command-line [websh](https://github.com/jiro4989/websh) client written in Python

</div>

## Features

- [x] Run shell command without huge Docker image
- [x] Save the execution result images
- [x] Open execution result images with your default browser
- [x] Upload local images

## Usage

```
usage: pywebsh [-h] [-v] [-o] [-i IMAGES] code

positional arguments:
  code                  code to execute on websh

optional arguments:
  -h, --help            show this help message and exit
  -v, --verbose         output verbose information
  -o, --open            open execution result images with your default browser
  -i IMAGES, --images IMAGES
                        images to upload
```

## Examples

### Run commands

Just specify the command you want to execute in the first argument.

```bash
$ pywebsh 'uname -a'
Linux efa5b0542de5 4.15.0-55-generic #60-Ubuntu SMP Tue Jul 2 18:22:20 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
```

### Save (then Open) execution result images

To save images, output the image files to `/images/` on the websh environment. When the `-o` / `--open` flag is enabled, the saved image will open in your system's default browser.

```bash
$ pywebsh --open 'screenfetch | textimg -o /images/out.png'
```

### Upload local images

You can upload and use local images. If you specify the image path in the `-i` / `--images` option and execute it, it will be saved in `0`, `1`, ... files under the `/media/` directory on the websh environment.

```bash
$ pywebsh --images foo.png --images bar.png 'ls -lA /media'
合計 176
-rw-r--r-- 1 root root    908 10月 20 20:28 0
-rw-r--r-- 1 root root 175821 10月 20 20:28 1
```

## Installation

Requires Python (testing on `v3.9.7`). Clone or download this repository then run below:

```bash
sudo make install
```

## License

The Unlicense
