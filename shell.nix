with import <nixpkgs> {};
pkgs.mkShell {

  nativeBuildInputs = [ pkgs.bashInteractive ];

  buildInputs = with pkgs; [
    shellcheck uv
  ];

  shellHook = ''
    echo "Welcome to computational arena."
  '';
}
