
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-galactic-ros2multicast";
  version = "0.13.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/galactic/ros2multicast/0.13.3-1.tar.gz";
    name = "0.13.3-1.tar.gz";
    sha256 = "2154f171ddd909dc361d9860ca2a009a5538f1a5cbc2537380e69d3450a92bd3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The multicast command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
