cp -rf source origin-git-0.62803d0
tar -czf origin-git-0.62803d0.tar.gz origin-git-0.62803d0
cp -rf origin.spec $DEV/SPECS/
cp -rf origin-git-0.62803d0.tar.gz $DEV/SOURCES/
rpmbuild -ba $DEV/SPECS/origin.spec
rm -rf origin-git-0.62803d0.tar.gz origin-git-0.62803d0
