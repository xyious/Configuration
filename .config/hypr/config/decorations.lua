-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 2,
        border_size = 1,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { "rgba(ff0099ee)", "rgba(493240ee)"},
                angle = 45,
            },
            inactive_border = CACHYGRAY,
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 5,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1,
        blur = {
            enabled = false,
        },
    },
})
