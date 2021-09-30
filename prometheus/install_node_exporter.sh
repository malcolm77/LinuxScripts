
# Install Node-Exporter

# Get Node-Exporter from GitHub and unzip it
wget https://github.com/prometheus/node_exporter/releases/download/v1.2.2/node_exporter-1.2.2.linux-amd64.tar.gz
tar zxvf node_exporter-1.2.2.linux-amd64.tar.gz 

# Get my service file from gitgub
wget https://raw.githubusercontent.com/malcolm77/LinuxScripts/master/prometheus/node_exporter.service

# Copy the files to the correct locations
cp node_exporter-1.2.2.linux-amd64/node_exporter /usr/local/bin/node_exporter
cp node_exporter.service /etc/systemd/system

# Create user and assign permissions
useradd node_exporter
chown node_exporter:node_exporter /usr/local/bin/node_exporter

# Start and check status
systemctl enable --now node_exporter.service
systemctl status node_exporter.service
