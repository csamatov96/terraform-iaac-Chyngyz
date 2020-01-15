# terraform-iaac-Chyngyz

kops create cluster acirrustech.com --state=s3://acirrustech.com --node-count=3 --zones="eu-west-1a,eu-west-1b,eu-west-1c" --node-size="t2.micro" --master-size="t2.micro" --master-zones="eu-west-1a,eu-west-1b,eu-west-1c" --networking="weave" --topology="private" --bastion="true" --out=. --target="terraform"
