#!/bin/bash
#
#
yourPipelineName=${LOGNAME}-${RANDOM}
yourPipelineDescription="A Pipeline of $yourPipelineName from $LOGNAME at Repo yourRepoName with Owner $KOSLI_OWNER"
visibility=public
#--template artifact,evidence-type1,evidence-type2 \
templateName=artifact

kosli pipeline declare  --pipeline $yourPipelineName \
	--description $yourPipelineDescription \
    --visibility $visibility \
	--template $templateName \
	--api-token $KOSLI_API_TOKEN \
	--owner $KOSLI_OWNER 

