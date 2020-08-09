if command -sq sccache && test "$OS" != "Windows_NT"
        set -gx RUSTC_WRAPPER sccache
end
