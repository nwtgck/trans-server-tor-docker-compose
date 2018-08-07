# trans-server-tor-docker-compose

[Trans server](https://github.com/nwtgck/trans-server-akka) as [Tor](https://www.torproject.org/) Hidden Service

## Run server

Here is how to run Trans server as Tor Hidden Service.

```bash
# Go to this repo
cd <this repo>
# Initialize "tor_hidden_service" for docker volume sharing
sudo ./init_shared_tor_hidden_service.sh 
# Run the server
docker-compose up
```

(NOTE: `sudo` is not necessary if you use [Docker For Mac](https://www.docker.com/docker-mac))

## Data Persistence

All data for persistence are under `./docker_volumes`.

## Check host name

You can check server's host name by

```bash
cat docker_volumes/tor_hidden_service/hostname
```

## Access to the server

You can send a file by like the following.

```bash
torsocks curl -T ./mytext.txt http://yhxhvqs46f6bxfxc.onion
```

Or you can access to the page like the following on Tor Browser.

![demo1](demo_images/demo1.png)

(NOTE: You should replace hostname with yours)

## HTTPS access

`HTTPS` is also available in this docker-compose.

You should add `-k` or `--insecure` to `curl` option.

```bash
torsocks curl -k -T ./mytext.txt https://yhxhvqs46f6bxfxc.onion
```

