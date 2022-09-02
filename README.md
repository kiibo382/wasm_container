# try wasm-to-oci and [krustlet](https://docs.krustlet.dev/)

## build
When using wasm:
```sh
rustup target add wasm32-wasi
cargo build --release --target wasm32-wasi
```

When using docker:
```sh
docker build . -t wasm_container
```


## run
When using wasm:
```sh
wasmtime target/wasm32-wasi/release/wasm_container.wasm
```

When using docker:
```sh
docker run -p 127.0.0.1:7878:7878 wasm_container
```

## push
When using wasm-to-oci:
```sh
wasm-to-oci push target/wasm32-wasi/release/wasm_container.wasm ghcr.io/{user_name}/{image_name}
```

When using docker:
```sh
docker tag -t wasm_container ghcr.io/{user_name}/{image_name}
docker push ghcr.io/{user_name}/{image_name}
```

## data
|  | docker (using scratch) | wasm |
| --- | --- | --- |
| image size | 4071016B (4.07MB) | 1954645B (1.9MB) |
