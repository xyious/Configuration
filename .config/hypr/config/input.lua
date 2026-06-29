-- Input configuration

hl.config({
    input = {
        accel_profile = "flat",

        kb_layout = "de",
        kb_variant = "neo_qwerty",

        repeat_delay = 256,
        repeat_rate = 64
    },
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
