# Create first 110 blocks

curl -d '{"jsonrpc":"2.0","id":"1","method":"generatetoaddress", "params":[110, "MINING_ADDRESS"]}' -u btc:btc localhost:18443/wallet/w1
