# /// script
# dependencies = [
#   "rocker",
# ]
# ///




import subprocess


subprocess.run([
   "rocker",
   "--x11",
   "--pull",
   "--user",
   "--home",
   # "--nvidia",
   # "auto",
   "ghcr.io/thomasonzhou/rr-ros2:main"
])
