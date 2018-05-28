#
# i3-style - ubuntu
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
    separator #333333
    background #2c001e
    statusline #aea79f
    focused_workspace #dd4814 #dd4814 #ffffff
    active_workspace #902a07 #902a07 #aea79f
    inactive_workspace #902a07 #902a07 #aea79f
    urgent_workspace #77216f #77216f #ffffff
  }
}

client.focused #dd4814 #dd4814 #ffffff #902a07
client.focused_inactive #5e2750 #5e2750 #aea79f #5e2750
client.unfocused #5e2750 #5e2750 #aea79f #5e2750
client.urgent #77216f #77216f #ffffff #efb73e
