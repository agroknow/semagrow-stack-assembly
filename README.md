semagrow-stack-assembly
=======================

creates deb and rpm packages containing the semagrow stack

Requirements
------------

"createrepo" dependency for setting up the rpm repo
"reprepro" dependency for setting up the apt repo

Usage
-----

To create the rpm and deb packages in the target/ dir type

mvn package

to deploy the created packages to the local repository directories type

mvn install