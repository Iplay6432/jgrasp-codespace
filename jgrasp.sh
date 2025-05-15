#!/bin/bash

cd ~
wget https://www.jgrasp.org/dl4g/jgrasp/jgrasp206_17.zip

unzip jgrasp206_17.zip

cd Desktop
echo "#!/bin/bash" > jgrasp.sh
echo "cd ~/jgrasp"
echo "java -jar ../jgrasp/jgrasp.jar" > jgrasp.sh
chmod +x jgrasp.sh
