## build
```sh
rustup target add wasm32-wasi 
cargo build --release --target wasm32-wasi
```

```sh
docker build . -t wasm_container
```


## run
```sh
docker run -p 127.0.0.1:7878:7878 wasm_container
```
