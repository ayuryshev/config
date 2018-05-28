#
# Wallpapers
#

# wallpapers
exec --no-startup-id exec mkdir /tmp/wlp
# exec --no-startup-id exec  ~/.config/i3/bin/gen_wlp.sh
exec -no-startup-id  ~/.config/i3/bin/wlp_theme.py --load --theme current_theme
exec --no-startup-id feh --bg-max /tmp/wlp/wlp01;

# switch to workspace
bindsym $mod+1 workspace number 1;   exec "feh --bg-max /tmp/wlp/wlp01; echo 01 > /tmp/wlp/wlp_current"
bindsym $mod+2 workspace number 2;   exec "feh --bg-max /tmp/wlp/wlp02; echo 02 > /tmp/wlp/wlp_current"
bindsym $mod+3 workspace number 3;   exec "feh --bg-max /tmp/wlp/wlp03; echo 03 > /tmp/wlp/wlp_current"
bindsym $mod+4 workspace number 4;   exec "feh --bg-max /tmp/wlp/wlp04; echo 04 > /tmp/wlp/wlp_current"
bindsym $mod+5 workspace number 5;   exec "feh --bg-max /tmp/wlp/wlp05; echo 05 > /tmp/wlp/wlp_current"
bindsym $mod+6 workspace number 6;   exec "feh --bg-max /tmp/wlp/wlp06; echo 06 > /tmp/wlp/wlp_current"
bindsym $mod+7 workspace number 7;   exec "feh --bg-max /tmp/wlp/wlp07; echo 07 > /tmp/wlp/wlp_current"
bindsym $mod+8 workspace number 8;   exec "feh --bg-max /tmp/wlp/wlp08; echo 08 > /tmp/wlp/wlp_current"
bindsym $mod+9 workspace number 9;   exec "feh --bg-max /tmp/wlp/wlp09; echo 09 > /tmp/wlp/wlp_current"
bindsym $mod+0 workspace number 10;  exec "feh --bg-max /tmp/wlp/wlp10; echo 10 > /tmp/wlp/wlp_current"



bindsym $mod+Shift+w mode "wallpaper"
mode "wallpaper" {	
	bindsym r exec ~/.config/i3/bin/gen_wlp.sh
	bindsym n exec ~/.config/i3/bin/nbg
	# bindsym s exec readlink ~/Pictures/wallpaper >> ~/Pictures/wallpapers.txt
	bindsym d exec mv "/tmp/wlp/wlp$(cat /tmp/wlp/wlp_current)" ~/Pictures/rm
	bindsym Shift+w exec -no-startup-id  ~/.config/i3/bin/wlp_theme.py --save
	bindsym Shift+s exec -no-startup-id  ~/.config/i3/bin/wlp_theme.py --shuffle

	bindsym 1 workspace number 1;   exec "feh --bg-max /tmp/wlp/wlp01; echo 01 > /tmp/wlp/wlp_current"
	bindsym 2 workspace number 2;   exec "feh --bg-max /tmp/wlp/wlp02; echo 02 > /tmp/wlp/wlp_current"
	bindsym 3 workspace number 3;   exec "feh --bg-max /tmp/wlp/wlp03; echo 03 > /tmp/wlp/wlp_current"
	bindsym 4 workspace number 4;   exec "feh --bg-max /tmp/wlp/wlp04; echo 04 > /tmp/wlp/wlp_current"
	bindsym 5 workspace number 5;   exec "feh --bg-max /tmp/wlp/wlp05; echo 05 > /tmp/wlp/wlp_current"
	bindsym 6 workspace number 6;   exec "feh --bg-max /tmp/wlp/wlp06; echo 06 > /tmp/wlp/wlp_current"
	bindsym 7 workspace number 7;   exec "feh --bg-max /tmp/wlp/wlp07; echo 07 > /tmp/wlp/wlp_current"
	bindsym 8 workspace number 8;   exec "feh --bg-max /tmp/wlp/wlp08; echo 08 > /tmp/wlp/wlp_current"
	bindsym 9 workspace number 9;   exec "feh --bg-max /tmp/wlp/wlp09; echo 09 > /tmp/wlp/wlp_current"
	bindsym 0 workspace number 10;  exec "feh --bg-max /tmp/wlp/wlp10; echo 10 > /tmp/wlp/wlp_current"

	bindsym space   mode "default"
	bindsym Return mode "default"
}
