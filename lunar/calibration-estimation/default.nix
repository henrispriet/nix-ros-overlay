
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-msgs, python-orocos-kdl, sensor-msgs, catkin, pythonPackages, rostest, rospy, visualization-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-lunar-calibration-estimation";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/calibration_estimation/0.10.14-0.tar.gz;
    sha256 = "10787a8f39bae48c854bdd1941bc49f23dc86b891c89030c952b98d426f30bb1";
  };

  propagatedBuildInputs = [ python-orocos-kdl sensor-msgs pythonPackages.scipy rostest urdfdom-py rospy visualization-msgs pythonPackages.matplotlib calibration-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Runs an optimization to estimate the a robot's kinematic parameters. This package is a
    generic rewrite of pr2_calibration_estimation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
