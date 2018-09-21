#!/bash
mkdir -p $XDG_RUNTIME_DIR/conky
cat wall-header.lua > /tmp/wall-header.lua 
task  > /tmp/wall-body.lua
echo " ]]" > /tmp/wall-footer.lua
cat /tmp/wall-header.lua /tmp/wall-body.lua /tmp/wall-footer.lua >\
    $XDG_RUNTIME_DIR/conky/conky-wall.lua

#conky -d -c $XDG_RUNTIME_DIR/conky/conky-wall.lua 

