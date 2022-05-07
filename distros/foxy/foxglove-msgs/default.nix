
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-foxglove-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_foxglove_msgs-release/archive/release/foxy/foxglove_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e275e4a1fac39e1aab5f9b241088f0ab59c4f9e3b0ced903a1c94c7148045a63";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''foxglove_msgs extends the common ROS visualization messages with additional
    useful messages that are supported by Foxglove Studio.'';
    license = with lib.licenses; [ mit ];
  };
}
