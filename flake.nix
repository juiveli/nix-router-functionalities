{
  description = "A NixOS flake providing a Kea DHCP module.";

  inputs = {
    nix-dev-toolkit.url = "github:juiveli/nix-dev-toolkit";
  };

  outputs =
    { self, nix-dev-toolkit }:
    {

      formatter = nix-dev-toolkit.formatter;
      checks = nix-dev-toolkit.checks;
      devShells = nix-dev-toolkit.devShells;

      nixosModules.dhcp = import ./dhcp.nix;
    };
}
