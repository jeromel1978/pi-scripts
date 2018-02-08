sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoclean
git clone https://github.com/google/aiyprojects-raspbian.git ~/voice-recognizer-raspi
cd ~/voice-recognizer-raspi
scripts/install-deps.sh
sudo scripts/install-services.sh
sudo systemctl enable voice-recognizer.service
sudo reboot