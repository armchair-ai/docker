# Docker for Armchair AI

## Create Angular Project

```sh
docker run -it --rm \
  -u $(id -u):$(id -g) \
  -v "$(pwd):/srv" \
  -w /srv \
  node:24.20.0 \
  bash -c '
    npm config set prefix /tmp/.npm-global &&
    export PATH=/tmp/.npm-global/bin:$PATH &&
    export NG_CLI_ANALYTICS=false &&
    npm install -g @angular/cli@22.1.6 &&
    ng new front --defaults --skip-git --skip-tests --directory=.
  '
```