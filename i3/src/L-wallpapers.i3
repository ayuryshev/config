#
# Wallpapers
#

# wallpapers
exec --no-startup-id exec ~/Pictures/gen_wlp.sh
exec --no-startup-id feh --bg-max ~/Pictures/wlp01 

bindsym $mod+Shift+w mode "wallpaper"
mode "wallpaper" {
		bindsym r exec ~/Pictures/gen_wlp.sh
		bindsym n exec nbg
		bindsym s exec readlink ~/Pictures/wallpaper >> ~/Pictures/wallpapers.txt
	    bindsym d exec mv "$(readlink ~/Pictures/wallpaper)" ~/Pictures/rm
		bindsym space   mode "default"
		bindsym Return mode "default"
}
