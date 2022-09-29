# For utc time in dual boots
echo "Time for dual boot"
sudo timedatectl set-local-rtc 1 --adjust-system-clock
echo "Changed dual boot time"
