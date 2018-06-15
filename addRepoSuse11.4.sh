#!/bin/bash
zypper ar -c -g -f http://ftp5.gwdg.de/pub/opensuse/discontinued/distribution/11.4/repo/oss repo1-oss
sudo zypper refs
sudo zypper ref
sudo zypper up
