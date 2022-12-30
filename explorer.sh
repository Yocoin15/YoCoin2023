#!/usr/bin/env bash
echo 'Running  Block Explorer'

#NETWORK=Ethereum \
COIN=YOC \
SUBNETWORK=Yocoin \
SUPPORTED_CHAINS='[]' \
# LOGO=/images/yocoin-logo.svg \
# LOGO_FOOTER=/images/yocoin-logo.svg \
BLOCK_TRANSFORMER=clique \
CHAIN_ID=100822 \
ETHEREUM_JSONRPC_TRACE_URL=http://localhost:8545 \
ETHEREUM_JSONRPC_HTTP_URL=http://localhost:8545 \
ETHEREUM_JSONRPC_WS_URL=ws://localhost:8546 \
make start

export COIN=YOC && \ 
export COIN_NAME=Yocoin && \
export NETWORK=Ethereum && \
export SUPPORTED_CHAINS='[]' && \
export ETHEREUM_JSONRPC_VARIANT=geth && \
export CHAIN_ID=100822 && \
export ETHEREUM_JSONRPC_HTTP_URL=https://new-rpc.yocoin.org/rpc && \
export ETHEREUM_JSONRPC_WS_URL=wss://new-rpc.yocoin.org/ws && \
export ETHEREUM_JSONRPC_TRACE_URL=https://new-rpc.yocoin.org/rpc && \
export BLOCKSCOUT_HOST=explorer.yocoin.org && \
export LOGO=/images/yocoin_SVG.svg && \
export LOGO_FOOTER=/images/yocoin_SVG.svg && \
nohup make start