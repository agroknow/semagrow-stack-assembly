echo "DEPLOY DEBIAN" 

reprepro remove lucid semagrow-stack
reprepro includedeb etch ../target/semagrow-stack-debian_1.0.0+rc1_all.deb
