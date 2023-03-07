# pip3 install requests
import requests

addr = 'http://127.0.0.1:8080'
get_obj_ep = '/scouter/v1/object'
get_obj_resp = requests.get(addr + get_obj_ep)

get_obj_resp_json = get_obj_resp.json()

result_arr = get_obj_resp_json['result']
host_objs = [obj for obj in result_arr if obj['objFamily'] == 'host']

print(addr)
for host in host_objs:
    print(host['objName'], '/', host['address'])
