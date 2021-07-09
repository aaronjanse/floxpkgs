{ stdenv, lib, python3Packages, fetchFromGitHub }:

python3Packages.buildPythonPackage rec {
  pname = "asciidots";
  version = "1.3.4";

  src = fetchFromGitHub {
    owner = "aaronjanse";
    repo = pname;
    rev = version;
    sha256 = "sha256:1xdvzh8klcgpkhhh2kcqhvjkchdzdc01iz7ikjpi8ba1d4615z7r";
  };

  propagatedBuildInputs = with python3Packages; [
    click
  ];
}
