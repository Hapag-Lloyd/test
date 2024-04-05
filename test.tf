resource "aws_lambda_function" "example" {
  layers = [data.aws_lambda_layer_version.datadog_extension.arn]
}

data "aws_lambda_layer_version" "datadog_extension" {
  layer_name = "arn:aws:lambda:us-east-1:464622532012:layer:Datadog-Extension"
  # renovate: datasource=aws-lambda-layer filter={"name": "my-layer", "architecture": "x86_64", "runtime": "python3.7"}
  version = 34
}
