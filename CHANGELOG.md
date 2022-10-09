# 0.5.0-rust-1.64.0

- Upgrade to Rust [`1.64.0`](https://blog.rust-lang.org/2022/09/22/Rust-1.64.0.html)

- Update tests modules to support [new lambda runtime](https://github.com/awslabs/aws-lambda-rust-runtime):

  - update rust edition to `2021`

  - Add [tokio](https://tokio.rs/) package to tests modules

  - update lambda runtime package

```diff
-   fn main() {
-       lambda!(handler)

+   #[tokio::main]
+   async fn main() -> Result<(), Error> {
+   let func = service_fn(handler);
+   lambda_runtime::run(func).await?;
+   Ok(())
}
```
