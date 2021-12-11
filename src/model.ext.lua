am.app.set_model(
    {
        DAEMON_URL = "https://github.com/genix-project/genix/releases/download/v2.2.2.1/linux-binaries.zip",
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_NAME = "genixd",
        CLI_NAME = "genix-cli",
        CONF_NAME = "genix.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "genixd",
        ADD_NODES = am.app.get_configuration("ADD_NODES", { "161.43.201.255" }),
        ABOUT_SOURCE = "__genix/about.hjson"
    },
    { merge = true, overwrite = true }
)