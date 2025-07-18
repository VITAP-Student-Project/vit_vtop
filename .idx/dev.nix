{ pkgs }: {
  channel = "stable-24.05";
  packages = [
    pkgs.flutter
    pkgs.gcc
    pkgs.jdk17
    pkgs.unzip
    pkgs.rustc
    pkgs.cargo
    pkgs.pkg-config
    pkgs.protobuf
    pkgs.nano
    pkgs.gh
    pkgs.htop
    pkgs.cargo-expand
    pkgs.rustup
    pkgs.rustup-toolchain-install-master
  ];
  idx.extensions = [
    "Dart-Code.dart-code"
    "Dart-Code.flutter"
    
  ];
  idx.previews = {
    previews = {
      web = {
        command = [
          "flutter"
          "run"
          "--machine"
          "-d"
          "web-server"
          "--web-hostname"
          "0.0.0.0"
          "--web-port"
          "$PORT"
        ];
        manager = "flutter";
      };
      android = {
        command = [
          "flutter"
          "run"
          "--machine"
          "-d"
          "android"
          "-d"
          "localhost:5555"
        ];
        manager = "flutter";
      };
    };
  };
  # idx.lifecycle.setup = {
  #   postStart = ''
  #     # Install flutter_rust_bridge_codegen if not already installed
  #     if ! command -v flutter_rust_bridge_codegen >/dev/null; then
  #       cargo install flutter_rust_bridge_codegen --locked
  #     fi
  #   '';
  # };
}
