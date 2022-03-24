# create-dotnet-devcert

A simple script that creates and trusts a self-signed development certificate for dotnet on Ubuntu and Arch based distributions.

## What does the script do

The script uses openssl to create a self-signed certificate. The certificate will then be imported and trusted at:

- System certificates - to enable service-to-service communication
- User nssdb - to trust the certificate in supported application like Chromium or Microsoft Edge
- Snap Chromium nssdb - to trust the certificate in Chromium if installed via snap
- Snap Postman nssdb - to trust the certificate in Postman if installed via snap

In addition the certificate will be imported into dotnet so that it will be used as a development certificate in ASP.NET Core.

## Prerequisites

- dotnet-sdk (Version >= 5.0)
- libnss3-tools
  - ubuntu: `sudo apt install libnss3-tools`
  - arch: `sudo pacman -S nss`
  - fedora: `sudo dnf install openssl nss-tools`

## Usage

Simply run the script needed for your distribution.

Ubuntu based distributions:
`./scripts/ubuntu-create-dotnet-devcert`

Arch based distributions:
`./scripts/arch-create-dotnet-devcert`

Fedora based distributions:
`./scripts/fedora-create-dotnet-devcert`

Use the `-s` to also save the certificate into the home folder so it can be manually imported into other programs.

## More info

More information about this can be found on my blog post [https://blog.wille-zone.de/post/aspnetcore-devcert-for-ubuntu](https://blog.wille-zone.de/post/aspnetcore-devcert-for-ubuntu).
