### ami-mavpeak

mavpeak ami package

#### Setup

1. Install `ami` if not installed already
    * `wget -q https://raw.githubusercontent.com/alis-is/ami/master/install.sh -O /tmp/install.sh && sudo sh /tmp/install.sh `
2. Create directory for your application (it should not be part of user home folder structure, you can use for example `/bake-buddy/mavpeak`)
3. Create `app.json` or `app.hjson` with app configuration you like, e.g.:
```json
{
    "id": "mavpeak",
    "type": "mvd.mavpeak",
    "user": "<your username>"
}
```
4. Run `sudo ami --path=<your app path> setup`
   * e.g. `ami --path=/bake-buddy/mavpeak` (path is not required if it would be equal to your CWD)
5. Create and configure your config.hjson.
	- your `config.hjson` and other configuration files should be placed next to `app.hjson`
	- refer to [mavpeak readme](https://github.com/mavryk-network/mavpeak) for more information about configuration
    - NOTE: you can autodetect configuration with `ami autodetect-configuration`
        - if you want to use custom app root directory you can `ami autodetect-configuration --root=<path to app root dir>`
6. Run `ami --path=<your app path> --help` to investigate available commands
7. Start mavpeak services with `ami --path=<your app path> start`
8. Check info about the mavpeak services `ami --path=<your app path> info`

##### Package configuration change: 
1. `ami --path=<your app path> stop`
2. change app.json or app.hjson as you like
3. `ami --path=<your app path> setup`
4. `ami --path=<your app path> start`

##### Remove app: 
1. `ami --path=<your app path> stop`
2. `ami --path=<your app path> remove --all`

#### Troubleshooting 

Run ami with `-ll=trace` to enable trace level printout, e.g.:
`ami --path=/bake-buddy/mavpeak -ll=trace setup`
