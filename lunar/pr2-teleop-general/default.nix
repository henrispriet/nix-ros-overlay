
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, polled-camera, actionlib, tf, geometry-msgs, pr2-controller-manager, angles, pr2-msgs, pr2-controllers-msgs, pr2-mechanism-msgs, ps3joy, pr2-common-action-msgs, catkin, urdf, moveit-msgs, roscpp, pr2-arm-kinematics, sensor-msgs, pr2-mannequin-mode, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-lunar-pr2-teleop-general";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/pr2_teleop_general/0.6.1-0.tar.gz;
    sha256 = "e8d29128847a396392c68ea1629fe3274a5fc918e3a120b80ce8980278411adb";
  };

  buildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs ps3joy angles actionlib-msgs pr2-common-action-msgs sensor-msgs polled-camera roscpp pr2-controller-manager urdf actionlib moveit-msgs pr2-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs polled-camera actionlib tf geometry-msgs pr2-controller-manager angles pr2-msgs pr2-controllers-msgs pr2-mechanism-msgs ps3joy pr2-common-action-msgs urdf moveit-msgs roscpp pr2-arm-kinematics sensor-msgs pr2-mannequin-mode pr2-tuck-arms-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_teleop_general'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
