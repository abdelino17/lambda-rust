# https://github.com/aws/aws-lambda-base-images
FROM amazon/aws-lambda-provided:al2

ARG RUST_VERSION=1.64.0

RUN yum install -y jq openssl-devel build-essentials \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \
    | CARGO_HOME=/cargo RUSTUP_HOME=/rustup sh -s -- -y --profile minimal --default-toolchain $RUST_VERSION

ADD build.sh /usr/local/bin/

VOLUME ["/code"]

WORKDIR /code

CMD ["/usr/local/bin/build.sh"]
