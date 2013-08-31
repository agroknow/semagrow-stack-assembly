echo "DEPLOYING DEBIAN" 

DEBIAN_REPOSITORY_ROOT="/var/www/deb"

FILES=${project.artifactId}*.deb
for f in $FILES
do
    DEBIAN_PACKAGE="`pwd`/$f"
    cd DEBIAN_REPOSITORY_ROOT
    reprepro remove lucid ${project.artifactId}
    reprepro includedeb lucid $DEBIAN_PACKAGE
done

echo "DEPLOYED"
