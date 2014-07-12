{
    "crypto": {
        "secret_passphrase" : "<%= crypto.secret %>"
    },
    "db": {
        "type": "mongodb",
        "host": "<%= db.host %>",
        "shorthost":"<%= db.shorthost %>",
        "database": "<%= db.name %>",
        "username": "<%= db.username %>",
        "password": "<%= db.password %>",
        "defaultPageSize" : "10000",
        "debug": false
    },
    "assets": {
        "default" : "<% assets.default %>",
        "tmpdir" : "<% assets.tmpdir %>",
        "engines": <%= assets.engines %>
    },
    "logger" : {
        "adapters": <%= logger.adapters %>
    }
}