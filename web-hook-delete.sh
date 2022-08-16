#!/bin/bash
source ./secret.sh
id=$(<web_hook_id.txt)
# echo "$id"
# echo "$git_hub_token"
curl \
  -X DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${git_hub_token}" \
  https://api.github.com/repos/${git_hub_user}/${git_hub_repo}/hooks/${id}
