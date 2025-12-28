Xiaomi Air device tree

Overview
 - Purpose: Device tree and supporting files for the Xiaomi Air (MT6835) to build AOSP/Custom ROMs.
 - Contents: Source makefiles, overlays (.apk), `rootdir` init configs, and `prebuilt` boot images.

Requirements
 - Git LFS: This repo uses Git Large File Storage for prebuilt images. Install before cloning or after pulling.

Quick Start
 - Install Git LFS:
	 - Linux: `sudo apt-get install -y git-lfs && git lfs install`
	 - macOS: `brew install git-lfs && git lfs install`
	 - Windows: Install Git LFS and run `git lfs install`
 - Clone:
	 - `git clone https://github.com/vbs-0/xiaomi_air_tree.git`
	 - `cd xiaomi_air_tree`

Layout
 - `air-device-tree/device/xiaomi/air`: Main device directory
 - `prebuilt/`: Boot images tracked via Git LFS
 - `overlay/product/`: Resource overlays packaged as APKs
 - `rootdir/etc/init/`: Init `.rc` services and configs
 - `vintf/`: Compatibility matrix and manifest

Notes
 - Large binaries (`boot.img`, `vendor_boot.img`, `Image`) are tracked with Git LFS.
 - The original archive `air-device-tree-fixed.zip` is ignored and should not be committed.

Build Integration (high-level)
 - Place `air-device-tree/device/xiaomi/air` under your AOSP `device/xiaomi/air`.
 - Include `AndroidProducts.mk` entries into your build configuration.
 - Ensure prebuilt images are fetched via LFS (`git lfs pull`) before build steps.

Maintenance
 - When adding new large binaries, ensure they match existing LFS patterns or update `.gitattributes` accordingly.
# xiaomi_air_tree