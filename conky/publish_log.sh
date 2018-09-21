#!/bash
journalctl -xe --no-pager| tail -80 > /tmp/wall-body.lua
cat /tmp/wall-header.lua /tmp/wall-body.lua /tmp/wall-footer.lua >\
    $XDG_RUNTIME_DIR/conky/conky-wall.lua

