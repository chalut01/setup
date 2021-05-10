#!/bin/bash
zypper ar -c -g -f http://ftp5.gwdg.de/pub/opensuse/discontinued/distribution/11.4/repo/oss repo1-oss
zypper ar -c -g -f http://ftp5.gwdg.de/pub/opensuse/discontinued/distribution/12.3/repo/oss/ oss-12
zypper ar -c -g -f http://ftp5.gwdg.de/pub/opensuse/discontinued/distribution/13.2/repo/oss/  oss-13
zypper ar -c -g -f http://ftp5.gwdg.de/pub/opensuse/discontinued/distribution/leap/15.0/repo/oss/ oss-15
sudo zypper refs
sudo zypper ref

#sudo zypper up
