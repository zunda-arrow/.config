from desktop_thingies import Texture

framerate = 60
monitor = "eDP-1"

# objects = [
    # Texture(
        # texture="/home/lunar/Documents/Projects/WidgetTool/examples/reimu_fumo.png",
        # scale=1 / 4,
    # ),
# ]

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
    # ("alice.png", 1),
    # ("marisa.png", 1.1),
    # ("reimu.png", 1),
    # ("sakuya.png", 1),
    # ("chen.png", 1),
    # ("flandre.png", 1),
    # ("patchouli.png", 1),
    # ("ran.png", 1.1),
    # ("remilia.png", 1),
    # ("yukari.png", 1),
]

objects = []

for file, scale in files:
    objects += [
        Texture(
            mass=1,
            friction=0.1,
            texture=f"/home/jake/.config/desktop-thingies/{file}",
            scale=.85 * 1 * scale,
        )
    ]
