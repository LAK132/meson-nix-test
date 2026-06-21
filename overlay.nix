final: prev: {
	meson-nix-test = with final; callPackage ./derivation.nix {};
}
