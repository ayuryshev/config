-- vim: ts=4 sw=4 noet ai cindent syntax=lua

conky.config = {
	alignment = 'bottom_left',
	background = false,
	color2 = '#00CCFF',
	cpu_avg_samples = 3,
	default_color = black, 
	double_buffer = true,
	font = 'Input Mono:size=14',
	gap_x = 10,
	gap_y = 0,
	minimum_width = 1200,
	minimum_height = 1040,  
	no_buffers = true,
	own_window = true,
	own_window_type = 'override',
	own_window_transparent = true,
	update_interval = 5.0,
	use_xft = true
}


conky.text = [[  
$color2 ${voffset 50}

