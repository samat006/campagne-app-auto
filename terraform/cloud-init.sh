
#!/bin/bash
sudo apt update && sudo apt install -y docker.io docker-compose git
git clone https://github.com/samat006/campagne-app-auto.git
cd campagne-app
docker-compose up -d
