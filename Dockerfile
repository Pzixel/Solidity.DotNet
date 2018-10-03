FROM microsoft/dotnet:2.0-sdk AS build

ENV SOLIDITY_VERSION 0.4.25
ENV SOLIDITY_DOWNLOAD_URL https://github.com/ethereum/solidity/releases/download/v$SOLIDITY_VERSION/solc-static-linux

RUN curl -SL $SOLIDITY_DOWNLOAD_URL --output /usr/bin/solc && chmod +x /usr/bin/solc
