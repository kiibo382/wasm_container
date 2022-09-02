FROM rust:1.63.0 as builder
WORKDIR /app
COPY Cargo.toml Cargo.lock ./
COPY src ./src
RUN cargo build --release

FROM scratch
COPY --from=builder /app/target/release/rust_docker /
CMD ["./rust_docker"]
