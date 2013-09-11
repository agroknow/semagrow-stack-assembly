#!/bin/sh

echo "DEPLOYING RPM"

RPM_REPOSITORY_ROOT="/var/www/rpm"

cp target/*.rpm $RPM_REPOSITORY_ROOT
createrepo $RPM_REPOSITORY_ROOT
