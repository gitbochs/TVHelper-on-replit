tag1=$(wget -qO- -t1 -T2 "https://api.github.com/repos/gitbochs/TVHelper/releases/latest" | jq -r '.tag_name')
wget -O TVHelper_Linux_x86_64.tar.xz https://github.com/gitbochs/TVHelper/releases/download/${tag1}/TVHelper_Linux_x86_64.tar.xz \
&& tar -xvJf TVHelper_Linux_x86_64.tar.xz
chmod +x TVHelper && rm -rf TVHelper_Linux_x86_64.tar.xz
./TVHelper
