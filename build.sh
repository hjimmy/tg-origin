cp -rf source origin-git-0.62803d0
tar -czf origin-git-0.62803d0.tar.gz origin-git-0.62803d0
cp -rf origin.spec ~/SPECS/
cp -rf origin-git-0.62803d0.tar.gz ~/SOURCES/
rpmbuild -ba ~/SPECS/origin.spec
rm -rf origin-git-0.62803d0.tar.gz origin-git-0.62803d0
