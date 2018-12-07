# PHP 7.3 Build Environment

This image contains a light image based on ubuntu 18.04 LTS and includes the latest PHP 7.3 CLI binaries from the [Ondřej Surý](https://launchpad.net/~ondrej/+archive/ubuntu/php) PPA.

It also has the following extensions installed:

1. GD
1. Zip
1. MBString
1. Readline
1. XML
1. Opcache
1. JSON
1. I8N
1. Curl
1. MySQL (both PDO and mysqli)
1. Sqlite 3
1. BCMath


It also includes common tools used to build and run PHP applications:

1. curl
1. unzip
1. git
1. jq (Command line JSON parser)
1. composer

The image is rebuilt nightly, as well as when the upstream images ([Ubuntu](https://hub.docker.com/_/ubuntu/) and [Composer](https://hub.docker.com/_/composer/)) push a new version. So this image should usually contain the latest fixes and updates.