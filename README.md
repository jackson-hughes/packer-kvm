# Packer QEMU/KVM

Simple build script using Packer to create minimal Centos 7 QEMU/KVM images in qcow2 format.

## Usage

	packer build centos7.json

## Notes

Currently, the `qemu_binary` has been hardcoded to the RHEL value, so this will probably only work on Centos / RHEL and derivatives. 

Todo: Variabilise
