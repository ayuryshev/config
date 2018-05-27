#
# i3-style
#

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
  mode hide
  i3bar_command i3bar -t
  status_command i3status
        tray_output primary
  colors {
    separator #AAAAAA
    background #222133
    statusline #FFFFFF
    focused_workspace #664477 #664477 #cccccc
    active_workspace #DCCD69 #DCCD69 #181715
    inactive_workspace #222133 #222133 #AAAAAA
    urgent_workspace #CE4045 #CE4045 #FFFFFF
  }
}

client.focused #664477 #664477 #cccccc #e7d8b1
client.focused_inactive #e7d8b1 #e7d8b1 #181715 #A074C4
client.unfocused #222133 #222133 #AAAAAA #A074C4
client.urgent #CE4045 #CE4045 #e7d8b1 #DCCD69