# script to restart a service and provide some feedback
echo Stopping...........
systemctl stop $1
echo "Sleeping (5s)..........."
sleep 5s
echo Starting...........
systemctl start $1
echo "Sleeping (10s)..........."
sleep 10s
echo Status..........
systemctl status $1 -l --no-pager
