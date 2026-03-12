#!/usr/bin/env bash
nvim . -c "lua require('notes').open_dir()" "$@"
