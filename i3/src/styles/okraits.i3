#
# i3-style - okraits
#

font pango:Ubuntu Mono 15
# font pango:Fira Mono 14
# font pango:Go Mono 14
# font pango:Knack NF 14

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
  mode hide
  i3bar_command i3bar -t
  status_command i3status
        tray_output primary
  colors {
    separator #666666
    background #333333
    statusline #bbbbbb
    focused_workspace #888888 #dddddd #222222
    active_workspace #333333 #555555 #bbbbbb
    inactive_workspace #333333 #555555 #bbbbbb
    urgent_workspace #2f343a #900000 #ffffff
  }
}

client.focused #888888 #dddddd #222222 #2e9ef4
client.focused_inactive #333333 #555555 #bbbbbb #484e50
client.unfocused #333333 #333333 #888888 #292d2e
client.urgent #2f343a #900000 #ffffff #900000
