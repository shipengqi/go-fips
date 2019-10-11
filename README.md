# go-fips
FIPS 140-2-compliant Go images based on Alpine.

1. Google has a component that is called boringcrypto (which is e.g. used as crypto component for boringssl,
a fork of openssl which is used in e.g. Chrome).
2. Boringcrypto also maintains a FIPS 140-2 certified version of boringcrypto available for everyone (including for redistribution)
  - Boringcrypto license: https://boringssl.googlesource.com/boringssl/+/fips-20170615/LICENSE
  - Boringcrypto repo: https://boringssl.googlesource.com/boringssl/+/fips-20170615
  - FIPS 140-2 certificate on NIST’s webpage: https://csrc.nist.gov/projects/cryptographic-module-validation-program/Certificate/2964
  - Full FIPS 140-2 certificate: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2964.pdf
3. A golang distribution which uses boringcrypto is actively maintained:
  - Repo: https://go.googlesource.com/go/+/dev.boringcrypto
  - Readme of golang with boringcrypto: https://go.googlesource.com/go/+/dev.boringcrypto/README.boringcrypto.md
  - Although a golang distribution can be created which uses FIPS 140-2 certified boringcrypto no one has certified a golang
  distribution separately.

## Requirements
- Git
- Docker

## Build image
```bash
./build_image.sh
```
