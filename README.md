# WebRTC Universal Binary

This is WebRTC framework in XCFramework format for iOS and macOS.

Google provides the official builds for iOS, if all you need is iOS build, get it from Google:

- https://cocoapods.org/pods/GoogleWebRTC
- https://webrtc.github.io/webrtc-org/native-code/ios/

## Installation

### Manual 

Download the XCFramework at [Release](https://github.com/HyunjoonKo/WebRTC/releases) and drag it into your Xcode project.

### Swift Package Manager 

Requires Swift 5.6.1 / Xcode 13.4.1

Add WebRTC repository https://github.com/HyunjoonKo/WebRTC.git via Swift Package Manager

### Building your own manually

#### Download webrtc

```shellscript
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=$PATH:/path/to/depot_tools

fetch --nohooks webrtc_ios

git branch -r
git checkout branch-heads/BRANCH

gclient sync
```

#### Generate targets and Build XCFramework

```shellscript
sh src/tools_webrtc/ios/build_ios_libs.sh
```
The output of the script execution is `src/out_ios_libs/WebRTC.xcframework`.
If you want to further reduce the size of the framework, adjust the `ENABLED_ARCHS` and `DEFAULT_ARCHS` values in the `src/tools_webrtc/ios/build_ios_libs.py` file.

#### Error solution

If you get an error `/bin/sh: ../../third_party/llvm-build/Release+Asserts/bin/clang++: No such file or directory` while running the script, run the following command: (requires python 3)
```shellscript
python3 src/tools/clang/scripts/update.py
```

If there is no dsymutil executable in `src/tools/clang/dsymutil`, do the following:
```shellscript
cd src/tools/clang/dsymutil

curl -O http://commondatastorage.googleapis.com/chromium-browser-clang-staging/$arch/dsymutil-llvmorg-15-init-17673-gd485c1b7-1.tgz

tar -zxvf dsymutil-llvmorg-15-init-17673-gd485c1b7-1.tgz
```
Find a recent dsymutil tarball: http://commondatastorage.googleapis.com/chromium-browser-clang-staging/index.html