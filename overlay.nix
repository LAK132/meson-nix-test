final: prev: rec {
	meson-nix-test = with final; callPackage ./derivation.nix {};
	hello-nix = meson-nix-test.override { hewwo = "false"; };
	hewwo-nix = meson-nix-test.override { hewwo = "true"; };
}
