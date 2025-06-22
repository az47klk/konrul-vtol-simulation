WORKING_DIR := $(CURDIR)/custom-world
MODEL_PATH := $(WORKING_DIR)/models
PX4_MODEL_PATH :=$(WORKING_DIR)/PX4-Autopilot/Tools/simulation/gz/models/

start_sim:
	@bash -c "cd $(CURDIR)/PX4-Autopilot/ && IGNITION_VERSION=edifice PX4_GZ_WORLD=myworld make px4_sitl gz_tiltrotor"

start_gz_gui:
	@bash -c "gz sim -g"

cam:
	@bash -c "python3 cam.py"

qgc:
	@bash -c "$(CURDIR)/QGroundControl-x86_64.AppImage"
        
install:
	@git clone https://github.com/PX4/PX4-Autopilot.git --recursive
	@mv ./PX4-Autopilot/Tools/simulation/gz/models/tiltrotor tiltrotor-old
	@cp -r ./custom/models/* ./PX4-Autopilot/Tools/simulation/gz/models/
	@cp -r ./custom/worlds/* ./PX4-Autopilot/Tools/simulation/gz/worlds/
	@pip install opencv-python-headless PyGObject numpy ultralytics pillow
	@sudo usermod -a -G dialout $$USER
	@sudo apt-get remove modemmanager -y
	@sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
	@sudo apt install libfuse2 -y
	@sudo apt install libxcb-xinerama0 libxkbcommon-x11-0 libxcb-cursor-dev -y
	@curl -O https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl-x86_64.AppImage
	@chmod +x ./QGroundControl-x86_64.AppImage

install_without_perm:
	@git clone https://github.com/PX4/PX4-Autopilot.git --recursive
	@mv ./PX4-Autopilot/Tools/simulation/gz/models/tiltrotor tiltrotor-old
	@cp -r ./custom/models/* ./PX4-Autopilot/Tools/simulation/gz/models/
	@cp -r ./custom/worlds/* ./PX4-Autopilot/Tools/simulation/gz/worlds/
	@pip install opencv-python-headless PyGObject numpy ultralytics pillow
	@curl -O https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl-x86_64.AppImage
	@chmod +x ./QGroundControl-x86_64.AppImage
