
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, python-qt-binding, catkin, rqt-gui, pythonPackages, rosmsg, rqt-py-common, roslib, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-lunar-rqt-publisher";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_publisher-release/archive/release/lunar/rqt_publisher/0.4.8-0.tar.gz;
    sha256 = "5480126bf9a7b6265002ea38cb17541679dea830dcb94823ce6dbfb1725a39b8";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rosmsg qt-gui-py-common rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
