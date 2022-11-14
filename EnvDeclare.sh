#!/bin/bash
#
#
envName=Docker-${LOGNAME}
envType="Docker"
yourEnvDescription="A Docker Env of $yourEnvName from $LOGNAME at Repo yourRepoName with Owner $KOSLI_OWNER"
#--template artifact,evidence-type1,evidence-type2 \
templateName=artifact

kosli environment declare  --name  $envName \
	--environment-type $envType \
	--description $yourEnvDescription \
	--api-token $KOSLI_API_TOKEN \
	--owner $KOSLI_OWNER 


<<'EOF'
--name yourEnvironmentName \
	--environment-type K8S \
	--description "my new env" \
	--api-token yourAPIToken \
	--owner yourOrgName 
EOF

