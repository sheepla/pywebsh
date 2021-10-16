# pywebsh

🐍 A small CLI [websh](https://github.com/jiro4989/websh) client written in Python

## Features

- [x] Run shell command without huge Docker image
- [x] Save the execution result images
- [x] Open execution result images with your default browser
- [ ] Upload local images

## Usage

```
usage: pywebsh [-h] [-v] [-o] code

positional arguments:
  code           code to execute on shellgeibot

optional arguments:
  -h, --help     show this help message and exit
  -v, --verbose  output verbose information
  -o, --open     open images with your default browser
```

## Examples

### Run commands

```
$ pywebsh 'uname -a'
Linux efa5b0542de5 4.15.0-55-generic #60-Ubuntu SMP Tue Jul 2 18:22:20 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
```

### Save and open images

To save images, output the image files to `/images/` on the websh. When the `-o` / `--open` flag is enabled, the saved image will open in your system's default browser.

```
$ pywebsh --open 'screenfetch | textimg -o /images/out.png'
```

## Installation

Requires Python (testing on `v3.9.7`). Clone or download this repository then run below:

```bash
sudo make install
```

## License

The Unlicense
