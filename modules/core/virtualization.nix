{ config, pkgs, nixpkgs, username, ... }:
{
  # Add user to libvirtd group
  users.users.${username}.extraGroups = [ "libvirtd" "docker" "qemu-libvirtd" ];
  
  # Install necessary packages
  environment.systemPackages = with pkgs; [
    virt-manager
    virt-viewer
    spice
    spice-gtk
    spice-protocol
    win-virtio
    win-spice
    virtio-win
    win-spice
    adwaita-icon-theme
    qemu_kvm  # Para ter emulação completa, não apenas KVM
  ];

  environment.etc."libvirt/hooks/qemu" = {
  source = pkgs.writeText "qemu" ''
#!/run/current-system/sw/bin/bash

command=$2

if [ "$command" = "started" ]; then
    systemctl set-property --runtime -- system.slice AllowedCPUs=3-5
    systemctl set-property --runtime -- user.slice AllowedCPUs=3-5
    systemctl set-property --runtime -- init.scope AllowedCPUs=3-5
elif [ "$command" = "release" ]; then
    systemctl set-property --runtime -- system.slice AllowedCPUs=0-5
    systemctl set-property --runtime -- user.slice AllowedCPUs=0-5
    systemctl set-property --runtime -- init.scope AllowedCPUs=0-5
fi
  '';

mode = "0755"; # make it executable and world (?) readable
};
  
  # Manage the virtualisation services
  virtualisation = {
    libvirtd = {
      allowedBridges = [
      "virbr0"
      "br0"
      "nm-bridge1"
      "net1"
      "virbr1"
    ];
      enable = true;
      qemuSwtpm = true;
      qemu = {
        runAsRoot = true;
        package = pkgs.qemu_kvm;  # Mudado para qemu_full para suporte completo
        swtpm.enable = true;
        ovmf = {
          enable = true;
          packages = [(pkgs.OVMF.override {
            secureBoot = true;
            tpmSupport = true;
          }).fd];
        };
      };



    };
    docker = {
      enable = true;
         enableOnBoot = true;
      package = pkgs.docker_25;
    };
    spiceUSBRedirection.enable = true;
  };

  hardware.nvidia-container-toolkit.enable = true;
  services.spice-vdagentd.enable = true;
  systemd.services.libvirtd.preStart = ''
    mkdir -p /var/lib/libvirt/hooks
    chmod 755 /var/lib/libvirt/hooks

    # Copy hook files
    cp -f /etc/libvirt/hooks/qemu /var/lib/libvirt/hooks/qemu

    # Make them executable
    chmod +x /var/lib/libvirt/hooks/qemu
'';
}
