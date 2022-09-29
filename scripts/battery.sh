echo "Setting battery thresholds"
sudo bash -c 'echo "START_CHARGE_THRESH_BAT0=75" > /etc/tlp.conf'
sudo bash -c 'echo "STOP_CHARGE_THRESH_BAT0=80" >> /etc/tlp.conf'