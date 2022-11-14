#!/bin/bash
#
#
envName=DockerEnv-${LOGNAME}-${RANDOM}
envType="K8S"
yourEnvDescription="A Env of $yourEnvName from $LOGNAME at Repo yourRepoName with Owner $KOSLI_OWNER"
#--template artifact,evidence-type1,evidence-type2 \
templateName=artifact

kosli environment report  docker $envName \
	--api-token $KOSLI_API_TOKEN \
	--owner $KOSLI_OWNER 

kosli environment report docker yourEnvironmentName \
	--api-token yourAPIToken \
	--owner yourOrgName

<<'EOF'
--name yourEnvironmentName \
	--environment-type K8S \
	--description "my new env" \
	--api-token yourAPIToken \
	--owner yourOrgName 
EOF

