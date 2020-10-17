# screen-qr
 Scans QR code from your screen or an image. This has only been tested on my computer (MacOS 10.15), but it should work on others.

## Dependencies
This project depends on:
- [Qt 5.15](https://www.qt.io) and qmake
- [zxing-cpp](https://github.com/nu-book/zxing-cpp)

## How to Build
TODO. Build process is roughly: install Qt and run `qmake`, then `make`, then `make install` and it'll hopefully do it for you.

## How to Use
To get from screen:
```
screen-qr -s
```

To get from image:
```
screen-qr -i <IMAGE_PATH>
```

If it is successful, `screen-qr` will print the result to `stdout`. Otherwise, it will output to `stderr`. The following are possible exit codes:

- `-1` or `255`: Error in using command, help message printed.
- `0`: Program runs successfully and a code is found.
- `1`: File from `-i` cannot be found.
- `2`: Program runs successfully, but no code is found.
- `3`: An error occured in ZXing.

## License
GPLv3
