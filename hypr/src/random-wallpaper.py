from random import choice
import os

images = os.listdir('/home/yarik/Images')
image = choice(images)

os.system('sh ~/.config/hypr/src/set-wallpaper.sh ~/Images/' + image)

