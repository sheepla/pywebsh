# pywebsh

🐍 A small CLI [websh](https://github.com/jiro4989/websh) client written in Python

## Usage

```bash
usage: pywebsh [-h] [-v] [-o] code

positional arguments:
  code           code to execute on shellgeibot

optional arguments:
  -h, --help     show this help message and exit
  -v, --verbose  output verbose information
  -o, --open     open images with your default browser
```

## Examples

```
$ pywebsh 'uname -a'
Linux efa5b0542de5 4.15.0-55-generic #60-Ubuntu SMP Tue Jul 2 18:22:20 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
$ pywebsh --open 'screenfetch | textimg -s'
```

## Installation

Requires Python (testing `v3.9.7`). Clone or download this repository then run below:

```bash
sudo make install
```

## License

The Unlicense
