
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, tf2-msgs, rqt-gui, pythonPackages, rqt-graph, catkin, tf2-ros, tf2, qt-dotgraph, rospy, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rqt-tf-tree";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_tf_tree-release/archive/release/lunar/rqt_tf_tree/0.6.0-0.tar.gz;
    sha256 = "d50161b4fd99ee301e9e20518409cc4eaefb878a033d7e4628b974fbcc6ac953";
  };

  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ rqt-gui-py tf2-msgs pythonPackages.rospkg rqt-gui rqt-graph tf2-ros tf2 qt-dotgraph rospy python-qt-binding geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
