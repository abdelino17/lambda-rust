# 0.5.0-rust-1.64.0

- **Important change** I changed the base image from the previous [lambdaci](https://hub.docker.com/r/lambci/lambda/) to official [AWS Lambda base images](https://hub.docker.com/r/amazon/aws-lambda-provided)

```diff
+   FROM amazon/aws-lambda-provided:al2
-   FROM lambci/lambda:build-provided.al2
```
