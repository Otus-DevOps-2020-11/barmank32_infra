[Unit]
Description=Puma Rails Server
After=network.target

[Service]
Type=simple
User=ubuntu
Group=ubuntu

WorkingDirectory=/home/ubuntu/reddit
ExecStart=/usr/local/bin/puma

Environment="DATABASE_URL=${addrs}"

TimeoutSec=15
Restart=always

[Install]
WantedBy=multi-user.target
