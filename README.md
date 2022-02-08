# Bitcoin regtest double spend demo

Two bitcoin nodes, regtest network. The first node will make transactions, the second node will make the fork and overwrite them.
Run shell scripts one by one, check intermediate results in blockboocks.

```bash
docker-compose up
```

http://localhost:9130/ - blockbook for node 1

http://localhost:9131/ - blockbook for node 2

In new tab:

```bash
./step1.sh
```

As ./step1.sh output, you will receive MINING_ADDRESS and SECOND_ADDRESS values.
Replace placeholders in steps 2-7 with those values and run files one by one.

```bash
./step2.sh
```

```bash
./step3.sh
```

and so on...
