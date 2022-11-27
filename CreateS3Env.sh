#!/bin/bash
#
#
#
envName=MGCS3
bucketName=



kosli environment report s3 $envName \
	--bucket $bucketName \
	--aws-key-id yourAWSAccessKeyID \
	--aws-secret-key yourAWSSecretAccessKey \
	--aws-region yourAWSRegion \
	--api-token yourAPIToken \
	--owner yourOrgName	
