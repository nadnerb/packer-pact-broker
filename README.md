Pact broker AWS AMI with Packer
=============

Install [Packer](https://www.packer.io/) and add it to your PATH.

Create your consul AMI in AWS, using your access and secret keys.

```
packer build \
  -var 'aws_access_key=your_key' \
  -var 'aws_secret_key=your_secret' \
  pact_broker.json
```

Or

```
packer build -var-file='packer_vars.json' pact_broker.json
```

Extra variables exposed:

* aws_region (defaults to `ap-southeast-2`)
* aws_instance_type (defaults to `t2.micro`)
* ami_name_prefix (defaults to `pact_broker`)
* pact_broker_version (defaults to `1.8.0`)

###Troubleshooting

* Make sure you have set the AWS region and the correct source AMI (Ubuntu 14.x recommended) for that region
* This example uses ubuntu
