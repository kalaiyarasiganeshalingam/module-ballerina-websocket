# Changelog
This file contains all the notable changes done to the Ballerina WebSocket package through the releases.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.0-alpha5] - 2021-03-19

### Added
- [Introduce auth support for the WebSocket client](https://github.com/ballerina-platform/ballerina-standard-library/issues/820)
- [Introduce HTTP cookie support for the WebSocket client](https://github.com/ballerina-platform/ballerina-standard-library/issues/978)
- [Introduce support to send text, binary, and pong messages by returning them from the remote methods](https://github.com/ballerina-platform/ballerina-standard-library/issues/1033)

### Changed
- [Make the websocket:Caller optional in WebSocket service remote functions](https://github.com/ballerina-platform/ballerina-standard-library/issues/1033)
- [Update SecureSocket API](https://github.com/ballerina-platform/ballerina-standard-library/issues/1068)
- [Convert all the timeout configurations to decimal](https://github.com/ballerina-platform/ballerina-standard-library/issues/1024)

### Removed
- Remove the support for the `websocket:AsyncClient`