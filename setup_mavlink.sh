apt  update 
apt install -y python3-pip 
apt install -y python-dev libxml2 libxml2-dev libxslt-dev 
git clone https://github.com/mavlink/mavlink.git  --recursive 
cd mavlink
python3 -m pip install -r pymavlink/requirements.txt 
python3 -m pymavlink.tools.mavgen --lang=C --wire-protocol=2.0 --output=generated/include/mavlink/v2.0 message_definitions/v1.0/common.xml 
