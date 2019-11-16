#!/bin/bash
killall Xcode
xcrun -k
pkill -int com.apple.CoreSimulator.CoreSimulatorService
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang.$(whoami)/ModuleCache"
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"
rm -rf ~/Library/Caches/com.apple.dt.Xcode/*
rm -rf ~/Library/Developer/Xcode/DerivedData/*
open /Applications/Xcode.app