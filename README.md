# server-plugin-frontail
Stream teeworlds logs to web front end

https://github.com/mthenw/frontail

```
npm i frontail -g
```

```
git clone git@github.com:DDNetPP/server myserver
cd myserver/lib
mkdir -p plugins && cd plugins
git clone git@github.com:DDNetPP/server-plugin-frontail
```

And then in your ``server.cnf`` put the map you want to search for
```
# this is mostly for other plugins that want to link to it
pl_frontail_url=https://yourdomain.com
```


```
curl localhost:9001
```

