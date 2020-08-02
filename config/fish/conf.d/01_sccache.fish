if command -sq sccache
	set -gx RUSTC_WRAPPER sccache
end
