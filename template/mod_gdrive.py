#!/usr/bin/env python3
import os
import utils

m = '\033[1;31m'
a = '\033[1;30m'
p = '\033[1;37m'
r = '\033[0m'

redirect = os.getenv('REDIRECT')

if redirect is None:
    redirect = input(f'\n{a}[{m}?{a}] {p}Link Google Drive Kamu{m} :{a} ')
else:
    utils.print(f'{a}[{m}+{a}] {p}GDrive File URL {m}:{a} '+redirect)
        
with open('template/gdrive/index_temp.html', 'r') as temp_index:
    temp_index_data = temp_index.read()
    temp_index_data = temp_index_data.replace('REDIRECT_URL', redirect)
    if os.getenv("DEBUG_HTTP"):
        temp_index_data = temp_index_data.replace('window.location = "https:" + restOfUrl;', '')

with open('template/gdrive/index.html', 'w') as updated_index:
    updated_index.write(temp_index_data)
