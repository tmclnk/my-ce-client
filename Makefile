.PHONY: help

help: ## Print Help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

discovery: ## Print Discovery
	@curl -s https://dmsi-eval-only.us.authz.cloudentity.io/dmsi-eval-only/demo/.well-known/openid-configuration | jq .

#bearer-token: ## Get Access Token
#	curl -s --request POST \
#		--url 'https://dmsi-eval-only.us.authz.cloudentity.io/dmsi-eval-only/demo/oauth2/token' \
#		--header 'content-type: application/x-www-form-urlencoded' \
#		--data grant_type=client_credentials \
#		--data client_id=b6d488149b1a48ae9df0fd35ca0fee3c \
#		--data client_secret=7VWos6Dow2LXrVp6KKRQUJ90jtcLsvnrtkgB-EbWGAo | jq -r .access_token
