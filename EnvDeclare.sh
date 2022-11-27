#!/bin/bash
#
#
#envName=Docker-${LOGNAME}
#envType="Docker"
yourEnvDescription="A Docker Env of $yourEnvName from $LOGNAME at Repo yourRepoName with Owner $KOSLI_OWNER"
#--template artifact,evidence-type1,evidence-type2 \
templateName=artifact

if [[ $# -ne 2 ]];then 
printf "Env Name: \n"
read envName
printf "Env Type: \n"
read envType
fi

envName=$1
envType=$2

kosli environment declare  --name  $envName \
	--environment-type $envType \
	--description $yourEnvDescription \
	--api-token $KOSLI_API_TOKEN \
	--owner $KOSLI_OWNER 



