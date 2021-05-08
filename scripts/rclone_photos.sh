#!/bin/bash
rclone sync /data/photos/ remote:Owlbear/photos --verbose --log-file /var/log/rclone/photos.log
