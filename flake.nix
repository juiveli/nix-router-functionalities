
{
  description = "A NixOS flake providing a Kea DHCP module.";

  outputs = { self }: {
    nixosModules.dhcp = import ./dhcp.nix;
  };
}
