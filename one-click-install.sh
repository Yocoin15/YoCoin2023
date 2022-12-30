sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum -y
cd
mkdir /etc/yocoin
cd /etc/yocoin
wget https://raw.githubusercontent.com/Yocoin15/YoCoin2022/main/genesis.json
geth init genesis.json
wget https://raw.githubusercontent.com/Yocoin15/YoCoin2022/main/yocoinnode.service
openssl rand -hex 16 >> nodepassword.txt
geth account new --password nodepassword.txt
sudo cp yocoinnode.service /etc/systemd/system
sudo systemctl enable yocoinnode.service
sudo systemctl start yocoinnode.service