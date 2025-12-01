from PIL import Image
import os

# ---- read image ----
image_path = "assets/img/diego.jpg"
img = Image.open(image_path)

# ---- input compressed file size ----
compressed_size = os.path.getsize(image_path)
print("Compressed file size:", compressed_size, "bytes") 

# ---- read size ----
width, height = img.size
print("Size:", width, "x", height)

# ---- compress (lower JPEG quality) ----
compressed_path = "compressed.jpg"
img.save(compressed_path, "JPEG", quality=30)   # 1–100 (lower = more compression)

# ---- output compressed file size ----
compressed_size = os.path.getsize(compressed_path)
print("Compressed file size:", compressed_size, "bytes")

