#!/bin/sh
set -xe

# Set Env Variables for Cloudflare Account ID and API Token
. /usr/local/bin/set_env

# Clones the public git repo and checkout to a branch
git clone ${PLUGIN_REPO_URL} .
git checkout ${PLUGIN_BRANCH}

# Install Wrangler
npm install -g wrangler --unsafe-perm=true

# Deploy to CloudFlare Pages
wrangler pages publish ${PLUGIN_PATH} --project-name=${PLUGIN_PROJECT_NAME} --branch=${PLUGIN_BRANCH}
