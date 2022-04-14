#!/bin/sh

# Run Apache on foreground
exec httpd -DFOREGROUND "$@"