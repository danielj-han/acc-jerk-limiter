#!/bin/bash

echo "=========================="
echo "Removing App mazdarx7"


LIBPANDA_USER=$(cat /etc/libpanda.d/libpanda_usr)

# Disable the installed services:
echo " - Disabling startup scripts..."
systemctl disable mazdarx7


# Here is where we remove scripts, services, etc.
echo " - Removing scripts..."
cd
if [ "x"`systemctl list-units | grep -c mazdarx7.service` = "x1" ]; then
    echo "Uninstalling mazdarx7.service"

    source /home/$LIBPANDA_USER/catkin_ws/devel/setup.bash
    rosrun robot_upstart uninstall mazdarx7
fi

systemctl daemon-reload # if needed
