# Aksaramaya Http Server Docker Images
## How to build the image

Just run

```bash
make
```

To clean up the directory, run

```bash
make clean
```

## How to run the image

```
docker run -p 8000:8000 -it aksaramaya/httpserver
```

## Package Management
### Update meta repo

```bash
apk update
```

### Install Package

```bash
apk add openssl
```
or
```bash
apk --update add openssl
```

### Remove Package

```bash
apk del openssl
```

### Search Package

To list all packages available, along with their descriptions:
```bash
apk search -v
```
To list all packages are part of the ACF system:
```bash
apk search -v "acf*"
```
To list all packages that list NTP as part of their description, use the -d or --description option:
```bash
apk search -v --description 'NTP'
```

### Get Info From Package
```bash
apk info -a zlib
```
out

```
zlib-1.2.5-r1 description:
A compression/decompression Library

zlib-1.2.5-r1 webpage:
http://zlib.net

zlib-1.2.5-r1 installed size:
94208

zlib-1.2.5-r1 depends on:
libc0.9.32

zlib-1.2.5-r1 is required by:
libcrypto1.0-1.0.0-r0
apk-tools-2.0.2-r4
openssh-client-5.4_p1-r2
openssh-5.4_p1-r2
libssl1.0-1.0.0-r0
freeswitch-1.0.6-r6
atop-1.25-r0

zlib-1.2.5-r1 contains:
lib/libz.so.1.2.5
lib/libz.so.1
lib/libz.so

zlib-1.2.5-r1 triggers:
```

## License
[MIT](LICENSE).
