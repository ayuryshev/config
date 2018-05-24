# wallpapers
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp01
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp02
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp03
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp04
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp05
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp06
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp07
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp08
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp09
exec --no-startup-id exec ln -s -f "$(shuf -n 1 ~/Pictures/wallpapers.txt)" ~/Pictures/wlp10
exec --no-startup-id feh --bg-max ~/Pictures/wlp01 

bindsym $mod+Shift+w mode "wallpaper"
mode "wallpaper" {
		bindsym n exec nbg
		bindsym s exec readlink ~/Pictures/wallpaper >> ~/Pictures/wallpapers.txt
	    bindsym d exec mv "$(readlink ~/Pictures/wallpaper)" ~/Pictures/rm
		bindsym space   mode "default"
		bindsym Return mode "default"
}
