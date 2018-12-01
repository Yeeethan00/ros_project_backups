#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/rosserial/rosserial_client"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mypc/ROSex/y-robot_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mypc/ROSex/y-robot_ws/install/lib/python2.7/dist-packages:/home/mypc/ROSex/y-robot_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mypc/ROSex/y-robot_ws/build" \
    "/usr/bin/python" \
    "/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/rosserial/rosserial_client/setup.py" \
    build --build-base "/home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/rosserial/rosserial_client" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/mypc/ROSex/y-robot_ws/install" --install-scripts="/home/mypc/ROSex/y-robot_ws/install/bin"
