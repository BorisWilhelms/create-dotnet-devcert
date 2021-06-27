# create-dotnet-devcert

A simple script that creates and trusts a self-signed development certificate for dotnet on Ubuntu.

## What does the script do

The script uses openssl to create a self-signed certificate. The certificate will then be imported and trusted at:

- System certificates - to enable service-to-service communication
- User nssdb - to trust the certificate in supported application like Chromium or Microsoft Edge
- Snap Chromium nssdb - to trust the certificate in Chromium if installed via snap
- Snap Postman nssdb - to trust the certificate in Postman if installed via snap

In addition the certificate will be imported into dotnet so that it will be used as a development certificate in ASP.NET Core.

## Prerequisites

- dotnet-sdk (Version >= 5.0)
- libnss3-tools (install via `sudo apt install libnss3-tools`)

## Usage

Simply run the script.

`./create-dotnet-devcert`

## More info

More information about this can be found on my blog post [https://blog.wille-zone.de/post/aspnetcore-devcert-for-ubuntu](https://blog.wille-zone.de/post/aspnetcore-devcert-for-ubuntu).
