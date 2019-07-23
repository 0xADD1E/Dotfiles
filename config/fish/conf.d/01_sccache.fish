if command -sq sccache
	set -gx RUSTC_WRAPPER (command -s sccache)
end
