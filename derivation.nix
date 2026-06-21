{
	stdenv,
	runCommand,
	meson,
	ninja
}:

stdenv.mkDerivation (finalAttrs: {
	name = "meson-nix-test-${finalAttrs.version}";
	pname = "nix-test";
	version = "v0.0.1";
	meta.maintainers = [{
		name = "LAK132";
		github = "LAK132";
		githubId = 1386467;
	}];

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

	passthru.tests.run = runCommand "${finalAttrs.pname}-test-output" {} ''
		[[ "$(${finalAttrs.finalPackage}/bin/${finalAttrs.pname})" == "Hello, Nix!" ]]
		mkdir -p $out
	'';
})
