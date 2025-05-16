#!/bin/bash

cd ~
wget https://www.jgrasp.org/dl4g/jgrasp/jgrasp206_17.zip

unzip jgrasp206_17.zip

cd Desktop
cat <<EOF > jgrasp.sh
#!/bin/bash
cd ~/jgrasp
java -jar ../jgrasp/jgrasp.jar
EOF
chmod +x jgrasp.sh
