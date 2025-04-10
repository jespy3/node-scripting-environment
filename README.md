# node-scripting-environment

Copy this repo to have a good foundational docker-based node scripting environment using a command like:
```
git clone git@github.com:jespy3/node-scripting-environment.git env-node
mv env-node/run.sh run.sh
cd env-node
rm -rf .git      # to disassociate the old .git files
```

## Setup

Ensure `docker compose` is available on current version of docker.

Run
```
docker compose up -d
```

Then
```
docker compose exec box bash
```

## Running the script

In the container, run:
```
```

## Optional workflow
To execute code in the container from outside of it, run:
```
./run.sh <code to execute in container>
```

