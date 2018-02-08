sudo apt-get install python3-dev python3-venv
sudo apt-get install portaudio19-dev libffi-dev libssl-dev 


python3 -m venv env
env/bin/python -m pip install --upgrade pip setuptools
source env/bin/activate


python -m pip install --upgrade google-assistant-library # this one did not work on RPi0W
python -m pip install google-assistant-sdk[samples]





sudo apt-get update
sudo apt-get install python3-dev python3-venv # Use python3.4-venv if the package cannot be found.


git clone https://github.com/googlesamples/assistant-sdk-python
cp -r assistant-sdk-python/google-assistant-sdk/googlesamples/assistant/grpc ./ZeroExample
sudo apt-get install portaudio19-dev libffi-dev libssl-dev

python3 -m venv env
source env/bin/activate
#python -m pip install --upgrade google-auth-oauth
python -m pip install --upgrade google-auth-oauthlib[tool]
google-oauthlib-tool --client-secrets /home/pi/clients_secrets/client_secret.apps.googleusercontent.com.json --scope https://www.googleapis.com/auth/assistant-sdk-prototype --save --headless
pip install --upgrade google-assistant-grpc
pip install --upgrade -r requirements.txt
pip install --update -r ~/assistant-sdk-python/google-assistant-sdk/googlesamples/assistant/grpc/requirements.txt
pip install --upgrade -r urllib3
python3 -m audio_helpers #tests audio
google-assistant-demo


sudo apt-get install -y libttspico-data
wget http://http.us.debian.org/debian/pool/non-free/s/svox/libttspico0_1.0+git20130326-5_armhf.deb
wget http://http.us.debian.org/debian/pool/non-free/s/svox/libttspico-utils_1.0+git20130326-5_armhf.deb
sudo dpkg -i libttspico0_1.0+git20130326-5_armhf.deb
sudo dpkg -i libttspico-utils_1.0+git20130326-5_armhf.deb
git clone https://github.com/google/aiyprojects-raspbian.git ~/voice-recognizer-raspi
cd ~/voice-recognizer-raspi
scripts/install-deps.sh
sudo scripts/install-services.sh
sudo systemctl enable voice-recognizer.service