{ fetchFromGitHub }:
let
  pkgs = import (fetchFromGitHub {
    owner = "aaronjanse";
    repo = "nixpkgs";
    rev = "aj2021jul-tahoe";
    sha256 = "sha256-hl3qicR6nBM5TD5vAqQNXISAvQ5uNVawkuFsg2qilW8=";
  }) {};
in
  pkgs.tahoe-lafs
