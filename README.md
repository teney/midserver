# ServiceNow MIDserver Cookbook

This cookbook is used to install a ServiceNow MIDserver

## Requirements

### Platforms

The following platforms are tested directly

- RedHat 6.6

The MIDserver can work on the following platforms:

- Windows 2003, 2008, and 2012
- 64-bit Linux Systems

## Attributes

The following attributes affect how the cookbook will install and configure the MIDserver:

- `node['midserver']['url']` - Sets the ServiceNow instance the MIDserver will connect to
- `node['midserver']['user']` - the username that the MIDserver will use to connect to the instance
- `node['midserver']['password']` - the password that the MIDserver will use to connect to the instance
- `node['midserver']['service_name']` - the name of the service
- `node['midserver']['install_base']` - location where the MIDserver will be unzipped
- `node['midserver']['download_url']` - the URL of the binary to download
- `node['midserver']['zipfile']` - the location to download the zipfile to

## Recipes

This section describes the recipes in the cookbook:

### default

Includes all recipes in the cookbook

### install

Downloads the MIDserver binary and unzips it

### config

Creates the config file used by the MIDserver

### service

Installs the service that the MID server will run as

### TODO

Improve the functionality of the service cookbook
