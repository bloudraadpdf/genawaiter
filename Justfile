check:
    mise exec -- cargo fmt --all -- --check
    mise exec -- cargo test --locked --workspace --features futures03
    mise exec -- cargo test --locked --no-default-features
    mise exec -- cargo clippy --locked --workspace --all-targets --features futures03 -- -D warnings
    mise exec -- cargo clippy --locked --no-default-features --all-targets -- -D warnings
