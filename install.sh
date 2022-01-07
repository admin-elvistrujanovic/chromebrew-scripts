#/bin/sh
clear
echo Installation is started
clear
echo Prepairing installation files...
mkdir /.install
cd /.install
clear
echo Downloading Chromebrew bin
curl -OL https://github.com/uberhacker/chromebrew-scripts/files/7829386/chromebrew.txt
curl -OL https://github.com/uberhacker/chromebrew-scripts/files/7829389/powerwash.txt
curl -OL https://github.com/uberhacker/chromebrew-scripts/files/7829393/rootfs.txt
curl -OL https://github.com/uberhacker/chromebrew-scripts/files/7829395/rw.txt
curl -OL https://github.com/uberhacker/chromebrew-scripts/files/7829835/chromebrew_installed.txt
echo Setting up Chromebrew bin files
rename chromebrew.txt chromebrew chromebrew.txt
rename powerwash.txt powerwash powerwash.txt
rename rootfs.txt rootfs rootfs.txt
rename rw.txt rw rw.txt
rename chromebrew_installed.txt .chromebrew_installed chromebrew_instLled.txt
chmod 6777 chromebrew
chmod 6777 powerwash
chmod 6777 rootfs
chmod 6777 rw
chown chronos chromebrew
chown chronos powerwash
chown chronos rootfs
chown chronos rw
echo Applying Chromebrew in bin
cp /.install/chromebrew /sbin
cp /.install/powerwash /sbin
cp /.install/rootfs /sbin
cp /.install/rw /sbin
cp /.install/chromebrew /bin
cp /.install/powerwash /bin
cp /.install/rootfs /bin
cp /.install/rw /bin
cp /.install/chromebrew /usr/local/sbin
cp /.install/powerwash /usr/local/sbin
cp /.install/rootfs /usr/local/sbin
cp /.install/rw /usr/local/sbin
cp /.install/chromebrew /usr/local/bin
cp /.install/powerwash /usr/local/bin
cp /.install/rootfs /usr/local/bin
cp /.install/rw /usr/local/bin
cp /.install/.chromebrew_installed /
cd /
rm -rf /.install
cat /.chromebrew_installed
echo Done
rm /install.sh
