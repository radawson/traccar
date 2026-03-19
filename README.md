# [Traccar](https://www.traccar.org)

## Overview

Traccar is an open source GPS tracking system. This repository contains Java-based back-end service. It supports more than 200 GPS protocols and more than 2000 models of GPS tracking devices. Traccar can be used with any major SQL database system. It also provides easy to use [REST API](https://www.traccar.org/traccar-api/).

Other parts of Traccar solution include:

- [Traccar web app](https://github.com/traccar/traccar-web)
- [Traccar Manager app](https://github.com/traccar/traccar-manager)

There is also a set of mobile apps that you can use for tracking mobile devices:

- [Traccar Client app](https://github.com/traccar/traccar-client)

## Features

Some of the available features include:

- Real-time GPS tracking
- Driver behaviour monitoring
- Detailed and summary reports
- Geofencing functionality
- Alarms and notifications
- Account and device management
- Email and SMS support

## Build

Please read [build from source documentation](https://www.traccar.org/build/) on the official website.

## Local Build and Packaging (fork workflow)

For local deployment testing, this repository can build:

- compiled artifacts only (`tracker-server.jar`, dependencies, web static files)
- full installer archives (`traccar-linux-64-<version>.zip`, etc.) that include `traccar.run`

From repo root:

```bash
make build
```

This builds server + web artifacts only.

```bash
make package VERSION=6.12.3 PLATFORM=linux-64
```

This creates a full reinstallable package through `setup/package.sh`.

Notes:

- `VERSION` is required for `make package`.
- `PLATFORM` defaults to `linux-64` and supports values accepted by `setup/package.sh` (`linux-64`, `linux-arm`, `windows-64`, `other`, `all`).
- The installer preserves `/opt/traccar/conf/traccar.xml` during reinstall via `setup/setup.sh`.

## Team

- Anton Tananaev ([anton@traccar.org](mailto:anton@traccar.org))
- Andrey Kunitsyn ([andrey@traccar.org](mailto:andrey@traccar.org))

## License

    Apache License, Version 2.0

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
