semagrow-stack-assembly
=======================

creates deb and rpm packages containing the semagrow stack

Requirements
------------

"createrepo" dependency for setting up the rpm repo
"reprepro" dependency for setting up the apt repo

Usage
-----

To create the rpm and deb packages in the target/ dir deploy the created packages to the local repository directories type

mvn package -P{debian,rpm}

Installation
------------

On the client side, make sure to import the rpm repository's public key:

rpm --import http://semagrow.semantic-web.at/rpm/semagrow.key.public