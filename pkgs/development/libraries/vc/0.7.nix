{ stdenv, fetchFromGitHub, cmake }:

stdenv.mkDerivation rec {
  version = "0.7.5";
  name = "Vc-${version}";

  src = fetchFromGitHub {
    owner = "VcDevel";
    repo = "Vc";
    rev = version;
    sha256 = "190s4r2n3jsivl4j2m288j3rqmgjj6gl308hi9mzwyhcfn17q8br";
  };

  nativeBuildInputs = [ cmake ];

  enableParallelBuilding = true;

  meta = with stdenv.lib; {
    description = "Library for multiprecision complex arithmetic with exact rounding";
    homepage = https://github.com/VcDevel/Vc;
    license = licenses.bsd3;
    platforms = platforms.all;
    maintainers = with maintainers; [ abbradar ];
  };
}
