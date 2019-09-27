with import <nixpkgs> {};
pkgs.mkShell {
  allowUnfree = true;
  buildInputs = [
    stdenv
    rustup
    cargo
    cairo
    glib
    xwayland
    freetype
    weston
    wayland
    glfw
    SDL2
    x11
    libcaca
    xorg.libX11
    cmake
    gnumake
    xorg.libXrandr
    linuxPackages_5_2.nvidia_x11
  ];
  LD_LIBRARY_PATH = with pkgs.xlibs; "${pkgs.mesa}/lib:${libX11}/lib:${libXcursor}/lib:${libXxf86vm}/lib:${libXi}/lib:${xorg.libXtst}/lib:${xorg.libXrandr}/lib:${linuxPackages_5_2.nvidia_x11}/lib";
}
