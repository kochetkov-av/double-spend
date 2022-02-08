# disconnect and sendtoaddress (this will be forked in next steps)

curl -d '{"jsonrpc":"2.0","id":"1","method":"addnode", "params":["bitcoin:18444", "remove"]}' -u btc:btc localhost:28443

curl -d '{"jsonrpc":"2.0","id":"1","method":"getaddednodeinfo", "params":[]}' -u btc:btc localhost:28443 | jq

curl -d '{"jsonrpc":"2.0","id":"1","method":"disconnectnode", "params":["bitcoin:18444"]}' -u btc:btc localhost:28443

curl -d '{"jsonrpc":"2.0","id":"1","method":"getpeerinfo", "params":[]}' -u btc:btc localhost:28443 | jq

curl -d '{"jsonrpc":"2.0","id":"1","method":"sendtoaddress", "params":["SECOND_ADDRESS", 0.345]}' -u btc:btc localhost:18443/wallet/w1
curl -d '{"jsonrpc":"2.0","id":"1","method":"sendtoaddress", "params":["SECOND_ADDRESS", 0.245]}' -u btc:btc localhost:18443/wallet/w1
curl -d '{"jsonrpc":"2.0","id":"1","method":"sendtoaddress", "params":["SECOND_ADDRESS", 0.445]}' -u btc:btc localhost:18443/wallet/w1

curl -d '{"jsonrpc":"2.0","id":"1","method":"generatetoaddress", "params":[1, "MINING_ADDRESS"]}' -u btc:btc localhost:18443/wallet/w1
