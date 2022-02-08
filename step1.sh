# Init 3 wallets, generate 2 addresses

curl -d '{"jsonrpc":"2.0","id":"1","method":"createwallet", "params": ["w1"]}' -u btc:btc localhost:18443
curl -d '{"jsonrpc":"2.0","id":"1","method":"createwallet", "params": ["w2"]}' -u btc:btc localhost:18443
curl -d '{"jsonrpc":"2.0","id":"1","method":"createwallet", "params": ["w3"]}' -u btc:btc localhost:28443

btc=$(curl -d '{"jsonrpc":"2.0","id":"1","method":"getnewaddress", "params": []}' -u btc:btc localhost:18443/wallet/w1 | jq .result)
btc2=$(curl -d '{"jsonrpc":"2.0","id":"1","method":"getnewaddress", "params": []}' -u btc:btc localhost:18443/wallet/w2 | jq .result)

echo "MINING_ADDRESS: ${btc}"
echo "SECOND_ADDRESS: ${btc2}"
