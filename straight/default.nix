{ fetchFromGitHub, trivialBuild }:

trivialBuild rec {
  pname = "straight.el";
  ename = pname;
  patches = [ ./nogit.patch ];
  src = fetchFromGitHub {
    owner = "raxod502";
    repo = "straight.el";
    rev = "4517e118ee43f849f708025dbb2cf4f281793121";
    sha256 = "sha256-KIOdXoujXZkhWUR+Sql9FOCccnwGCUMAS0zlAQR8sEU=";
  };
}
