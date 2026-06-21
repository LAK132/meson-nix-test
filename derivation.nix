{
	stdenv,
	meson,
	ninja
}:

stdenv.mkDerivation rec {
	name = "meson-nix-test-${version}";
	version = "v0.0.1";

	src = ./.;

	# things needed to compile the program
	nativeBuildInputs = [
		meson
		ninja
	];

	# things needed to run the program
	buildInputs = [
	];

	buildPhase = ''
		meson compile nix-test
	'';

	installPhase = ''
		mkdir -p $out
		meson install
	'';
}
