{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-python-setup-py";
  version = "0.2.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1a9x6rm5icwcx0k4i36vfc3b8sl6hsd2d98j23di4yz0fcdb4dx6";
  };

  propagatedBuildInputs = [ colcon-core setuptools ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = ''
      An extension for colcon-core to identify packages with a setup.py file by
      introspecting the arguments to the setup() function call of setuptools.
    '';
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
