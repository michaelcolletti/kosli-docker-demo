#!/bin/bash
#
#
bucketName=cpi-storage-lab
envName="S3-${LOGNAME}S3Bucket-${bucketName}"

envType="S3"
repoName=$1
envDescription="Docker $envName from $KOSLI_OWNER for Bucket $bucketName "
# --template artifact,evidence-type1,evidence-type2 \
templateName=evidence-type1
#--bucket $bucketName
# --bucket $bucketName 

kosli environment declare  --name  $envName  --environment-type $envType \
	--description $envDescription \
	--api-token $KOSLI_API_TOKEN \
	--owner $KOSLI_OWNER 

