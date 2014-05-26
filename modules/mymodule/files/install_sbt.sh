#!/bin/bash

vbin=$HOME/bin
sbt_bin=$vbin/sbt

mkdir -p $vbin

cd $vbin
wget http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.2/sbt-launch.jar

(
cat <<'EOF'
SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
java $SBT_OPTS -jar `dirname $0`/sbt-launch.jar "$@"
EOF
) > $sbt_bin


chmod u+x $sbt_bin
