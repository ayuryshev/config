#
# i3-style - tomorrow-night-80s
#

default_border pixel 2
font pango:Roboto Mono 14

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
  mode hide
  i3bar_command i3bar -t
  status_command i3status
        tray_output primary
  colors {
    separator #515151
    background #2d2d2d
    statusline #cccccc
    focused_workspace #99cc99 #99cc99 #000000
    active_workspace #333333 #333333 #ffffff
    inactive_workspace #2d2d2d #2d2d2d #999999
    urgent_workspace #f2777a #f2777a #ffffff
  }
}

client.focused #99cc99 #99cc99 #000000 #2d2d2d
client.focused_inactive #393939 #393939 #888888 #292d2e
client.unfocused #2d2d2d #2d2d2d #999999 #292d2e
client.urgent #2f343a #900000 #ffffff #900000
