# ready_controller1
# The car-following controller we developed is designed to minimize sudden changes in acceleration, effectively reducing the jerk value to enhance ride comfort and stability.

# Running Docker with your Generated Code

## Build the Docker Image

```
docker build -t ros:noetic-robot .
```

## Visit the source/data folder on your host machine 

```
cd workdir
mkdir -p src
cd src
git clone [your ros repositories]
cd ..
cp ../somewhere/else/somebagfile.bag mytest.bag
```

Some useful repositories are at. Git repositories useful for looking at and using the simulation tools:

* https://github.com/jmscslgroup/cs3891proj2023
* https://github.com/jmscslgroup/subtractor
* https://github.com/jmscslgroup/odometer
* https://github.com/jmscslgroup/profproject
* https://github.com/jmscslgroup/carsimplesimulink

## Launch docker and extract your simulink code

```
docker run --mount type=bind,source=.,target=/ros/catkin_ws -it ros:noetic-robot
```

Now, inside of your docker container, compile your Ros catkin workspace. Your cwd should be `/ros/catkin_ws`

```
catkin_make
```

On your computer, extract the .tgz file you received from your generated simulink code in workdir/src. You should have then (on your computer) `workdir/src/ready_controller/(files)`

In your Docker container, you should see `/ros/catkin_ws/ready_controller/(files)`, if your drive mappings worked correctly. My gzipped output file is called `ready_controller.tgz`

Now recompile your catkin workspace:

```
catkin_make
```

# Create your project package

My project team will be called `mazdarx7`

cd /ros/catkin_ws/src

Inside this folder, create launch/ and then paste in your launchfile:

catkin_make
roslaunch ready_controller ready_controller_1_docker.launch
# mazdarx7
