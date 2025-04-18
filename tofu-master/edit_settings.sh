#!/bin/bash

orig_dir=$PWD
target_dir="/home/ctf/research/tofu-master/temp"
target_file="settings_example.json"

# Run commands
nano "$target_dir/$target_file"

$SHELL
