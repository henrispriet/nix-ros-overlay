
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt5, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-noetic-mapviz";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/noetic/mapviz/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "4807272a020e920f896ef57e2d0822287fa78d2a44149fec98646e206d41437f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport marti-common-msgs message-runtime pluginlib qt5.qtbase rosapi roscpp rqt-gui rqt-gui-cpp std-srvs swri-transform-util swri-yaml-util tf xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ catkin pkg-config qt5.qtbase ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
