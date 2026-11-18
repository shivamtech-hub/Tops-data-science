
print("hello")

import cv2
import numpy as np
import math
import random
from PIL import Image, ImageDraw, ImageFont, ImageFilter

# -------------------------------
# VIDEO SETTINGS
# -------------------------------
W, H = 480, 864
FPS = 30
DURATION = 12
TOTAL = FPS * DURATION

random.seed(10)
np.random.seed(10)

# Load Maa Kaalratri image
photo = Image.open("maa_kaalratri.jpg").convert("RGB")

# Resize image to vertical 9:16 format
scale = max(W / photo.width, H / photo.height)
photo = photo.resize(
    (int(photo.width * scale), int(photo.height * scale)),
    Image.Resampling.LANCZOS
)

left = (photo.width - W) // 2
top = (photo.height - H) // 2
photo = photo.crop((left, top, left + W, top + H))

# Dark cinematic background
background = Image.new("RGB", (W, H), (8, 4, 15))

# Font setup
def get_font(size):
    paths = [
        "C:/Windows/Fonts/georgia.ttf",
        "C:/Windows/Fonts/arial.ttf"
    ]
    for path in paths:
        try:
            return ImageFont.truetype(path, size)
        except OSError:
            pass
    return ImageFont.load_default()

title_font = get_font(25)
subtitle_font = get_font(15)

# Create glowing particles
particles = []
for _ in range(100):
    particles.append({
        "x": random.randint(0, W),
        "y": random.randint(0, H),
        "speed": random.uniform(0.5, 2.5),
        "size": random.randint(1, 3)
    })

# Video writer
fourcc = cv2.VideoWriter_fourcc(*"mp4v")
video = cv2.VideoWriter(
    "Maa_Kaalratri_Reveal.mp4",
    fourcc, FPS, (W, H)
)

for frame_no in range(TOTAL):
    t = frame_no / FPS
    progress = min(1.0, t / 7.0)

    # Start with dark background
    frame = background.copy()

    # Diagonal image reveal
    reveal_edge = int(-H + progress * (W + H))

    mask = Image.new("L", (W, H), 0)
    md = ImageDraw.Draw(mask)
    md.polygon(
        [
            (0, 0),
            (min(W, reveal_edge), 0),
            (min(W, reveal_edge + H), H),
            (0, H)
        ],
        fill=255
    )

    # Blend revealed image with dark background
    frame.paste(photo, (0, 0), mask)

    # Golden moving light streak
    if progress < 1:
        glow_x = int(progress * (W + H)) - H
        glow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
        gd = ImageDraw.Draw(glow)

        gd.line(
            [(glow_x, 0), (glow_x + H, H)],
            fill=(255, 180, 45, 220),
            width=4
        )

        glow = glow.filter(ImageFilter.GaussianBlur(12))
        frame = Image.alpha_composite(
            frame.convert("RGBA"), glow
        ).convert("RGB")

    # Cinematic dark overlay around edges
    arr = np.array(frame).astype(np.float32)
    yy, xx = np.mgrid[0:H, 0:W]
    distance = ((xx - W/2)**2 / (W/2)**2 +
                (yy - H/2)**2 / (H/2)**2)
    vignette = np.clip(1 - 0.42 * distance, 0.45, 1)
    arr *= vignette[:, :, None]
    frame = Image.fromarray(np.uint8(np.clip(arr, 0, 255)))

    # Floating golden particles
    draw = ImageDraw.Draw(frame)
    for p in particles:
        y = (p["y"] - t * p["speed"] * 25) % H
        x = p["x"] + math.sin(t * 2 + p["y"]) * 5
        draw.ellipse(
            (int(x), int(y),
             int(x) + p["size"], int(y) + p["size"]),
            fill=(255, random.randint(150, 220), 50)
        )

    # Title appears after image reveal
    if t > 2:
        opacity = min(1.0, (t - 2) / 2)
        title = "K A L A R A T R I"

        # Center the title
        bbox = draw.textbbox((0, 0), title, font=title_font)
        tw = bbox[2] - bbox[0]
        tx = (W - tw) // 2

        draw.text(
            (tx, 48), title,
            font=title_font,
            fill=(255, int(190 * opacity), 80)
        )

        draw.line(
            (W//2 - 65, 88, W//2 + 65, 88),
            fill=(218, 160, 65),
            width=1
        )

    # Subtitle at the end
    if t > 7:
        draw.text(
            (W//2, H - 65),
            "JAI MAA KAALRATRI",
            font=subtitle_font,
            fill=(255, 215, 130),
            anchor="mm",
            stroke_width=1,
            stroke_fill=(40, 10, 0)
        )

    # Convert RGB to OpenCV BGR
    video.write(
        cv2.cvtColor(np.array(frame), cv2.COLOR_RGB2BGR)
    )

video.release()

print("Video created: Maa_Kaalratri_Reveal.mp4")


