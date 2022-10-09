# AWS Lambda [Rust](https://www.rust-lang.org/) docker builder 🐑 🦀 🐳 [![Main](https://github.com/abdelino17/lambda-rust/actions/workflows/main.yml/badge.svg)](https://github.com/abdelino17/lambda-rust/actions/workflows/main.yml)

This project is the fork of the [original lambda rust project](https://github.com/softprops/lambda-rust).

## 🤔 about

This docker image extends [lambda ci `provided.al2`](https://github.com/lambci/docker-lambda#documentation) builder docker image, a faithful reproduction of the actual AWS "**provided.al2**" Lambda runtime environment,
and installs [rustup](https://rustup.rs/) and the _stable_ rust toolchain.

This provides a build environment, consistent with your target execution environment for predictable results.

## 📦 install

Tags for this docker image follow the naming convention `abdelino/lambda-rust:{version}-rust-{rust-stable-version}`
where `{rust-stable-version}` is a stable version of rust.

You can find a list of available docker tags [here](https://hub.docker.com/r/abdelino/lambda-rust/tags)

> 💡 If you don't find the version you're looking for, please [open a new github issue](https://github.com/abdelino/lambda-rust/issues/new?title=I%27m%20looking%20for%20version%20xxx) to publish one

You can also depend directly on `abdelino/lambda-rust:latest` for the most recently published version.

## 🤸 usage

The main motivation for this project is to build lambda functions in rust with the Serverless Framework with the most recent version of rust.

@Abdel FARE 2022
