# connect nodes and sync

curl -d '{"jsonrpc":"2.0","id":"1","method":"addnode", "params":["bitcoin:18444", "add"]}' -u btc:btc localhost:28443

curl -d '{"jsonrpc":"2.0","id":"1","method":"getaddednodeinfo", "params":[]}' -u btc:btc localhost:28443 | jq

curl -d '{"jsonrpc":"2.0","id":"1","method":"getpeerinfo", "params":[]}' -u btc:btc localhost:28443 | jq

