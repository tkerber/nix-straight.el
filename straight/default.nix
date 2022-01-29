{ fetchFromGitHub, trivialBuild }:

trivialBuild rec {
  pname = "straight.el";
  ename = pname;
  patches = [ ./nogit.patch ];
  src = fetchFromGitHub {
    owner = "raxod502";
    repo = "straight.el";
    rev = "af5437f2afd00936c883124d6d3098721c2d306c";
    sha256 = "sha256-Mh555zVj4joLqnCzDzv4lu9RKRnmtYqVR9SbNs7A6tY=";
  };
}
