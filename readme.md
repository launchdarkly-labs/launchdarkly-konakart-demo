# Summary
This repository is intended to make trivial the process of spinning up an instance of KonaKart with LaunchDarkly integrated via a Docker container.

## Recommendations
Run the following command to build the container: `docker build . -t="launchdarkly/konakart-demo"`

After built, run the following line to get the container instance running (**NOTE** the environment variables *will* be different): `docker run -d --name ld-konakart --publish 8780:8780 --env LD_DELAY_FLAG_KEY="YOUR_FLAG_HERE" --env LD_ENV_SERVER_KEY="YOUR_KEY_HERE" launchdarkly/konakart-demo`

## Vision
Eventually, this should be turned into a Docker compose file so that...
* ...the configuration overall (environemnt vars, etc) can be handled via the script.
* ...other support containers can be initialized in tandem.
    * EG A container who always sends traffic to the instance.