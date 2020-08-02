# serverless node.js app from command line
cd sls-test
sls create -t aws-nodejs -n simple
sls deploy
sls deploy -f hello
# quick test
sls invoke local -f hello