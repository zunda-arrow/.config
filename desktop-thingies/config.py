from desktop_thingies import Texture

framerate = 60
monitor = "DP-3"

top_offset = 20

files = [
    ("alice.png", 1),
    ("marisa.png", 1.1),
    ("reimu.png", 1),
    ("sakuya.png", 1),
    ("chen.png", 1),
    ("flandre.png", 1),
    ("patchouli.png", 1),
    ("ran.png", 1.1),
    ("remilia.png", 1),
    ("yukari.png", 1),
    ("alice.png", 1),
    ("marisa.png", 1.1),
    ("reimu.png", 1),
    ("sakuya.png", 1),
    ("chen.png", 1),
    ("flandre.png", 1),
    ("patchouli.png", 1),
    ("ran.png", 1.1),
    ("remilia.png", 1),
    ("yukari.png", 1),
]

objects = []

for file, scale in files:
    objects += [
        Texture(
            mass=1,
            friction=0.1,
            texture=f"/home/lunar/.config/desktop-thingies/{file}",
            scale=1 * scale,
            collision_scale=.8,
            pickup_distance=50,
        )
    ]
