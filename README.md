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
docker compose -f env-node/compose.yaml build
```

## Running the docker container

You can execute commands against your container in a local dev environment from either:

### Option 1: via your local terminal
```
docker compose -f env-node/compose.yaml run --rm box <command>
```
These `<command>`s are run as if you are in the container. ie. start container; run `<command>`; stop and remove(`--rm`) container)

You can run `command`s like:
```
docker compose -f env-node/compose.yaml run --rm box node --version
docker compose -f env-node/compose.yaml run --rm box node hello_world.js
```

To avoid typing out `docker compose -f env-node/compose.yaml run --rm appserver` everytime, use the `run.sh` script like so:
```
./run.sh node --version
./run.sh node hello_world.js
```

**Tips:**
- For a smoother local development workflow, you can add the alias `alias run='./run.sh'` to your `.bashrc`/`.bash_profile`/`.zshrc`/`.zsh_profile`
  - Allowing you to simply type `run <command>` from your terminal instead
- Setting your local dev like this is friendly for any IDE you use:
  - Write code in IDE
  - Jump to terminal and use `run <command>`


### Option 2: via an interactive shell
```
docker compose -f env-node/compose.yaml run --rm box

# You will be in the container itself as your local environment and can run:
node --version
node hello_world.js
```

