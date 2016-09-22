#!/bin/bash 
set -eux
target_dir=generated
mkdir -p generated

java -Xmx2048M -Xss8M -XX:MaxPermSize=128M -jar sbt-launch.jar "run Top --backend v --configInstance lowrisc_chip.DefaultConfig --targetDir ./${target_dir}"
