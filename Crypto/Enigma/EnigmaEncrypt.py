#!/usr/bin/python3
import hashlib
import string
import os

rotor_1 = ''
rotor_3 = ''
rotor_2 = ''
reflector = ''
rotor_count_1 = 0
rotor_count_2 = 0
rotor_count_3 = 0

def init_rotor() :
    global rotor_1
    global rotor_2
    global rotor_3

    # This is the ultimate rotor below 从出题组那里获得的残留数据
    # rotor_1: KOLPQAZWSXEDCRFVTGBYHNUJMI
    # rotor_2: OPASDFGHJKLZXCVBNMQWERTYUI
    # rotor_3: TUOADGJLZCBMWRYIPSFHKXVNQE
    # rotor_count: 1838

def init_reflector() :
    global reflector

    reflector = 'ZYXWVUTSRQPONMLKJIHGFEDCBA' #反射器

def EnigmaNigel(data) :
    global rotor_1
    global rotor_2
    global rotor_3
    global reflector
    global rotor_count_1
    global rotor_count_2
    global rotor_count_3

    new_data = ''
    for each_data in data : #for each data_char encrypt
        if each_data not in string.ascii_uppercase :
            new_data += each_data
            print(each_data,end='')
            continue

        original_order = string.ascii_uppercase.find(each_data)
        temp_char = rotor_1[original_order]
        rotor_1 = rotor_1[1:] + rotor_1[0]
        rotor_count_1 += 1

        original_order = string.ascii_uppercase.find(temp_char)
        temp_char = rotor_2[original_order]
        if ( rotor_count_1 // 26 > (rotor_count_1-1) // 26 ) :
            rotor_2 = rotor_2[1:] + rotor_2[0]
            rotor_count_2 += 1

        original_order = string.ascii_uppercase.find(temp_char)
        temp_char = rotor_3[original_order]
        if (rotor_count_1 // 676) > ( (rotor_count_1 - 1) // 676 ) :
            rotor_3 = rotor_3[1:] + rotor_3[0]
            rotor_count_3 += 1

        original_order = string.ascii_uppercase.find(temp_char)
        last = temp_char = reflector[original_order]
        new_data += last
        print(last, end='')
    return new_data

if __name__ == "__main__" :

    init_rotor()
    init_reflector()
    data = ''
    try:
        #f = open(r'cipherText.txt', 'r')
        f = open(r'plainText.txt','r') #这是你当前目录从密文恢复出来的明文
        data = f.read()
        assert 'XZIT' in data
        data = EnigmaNigel(data)
        assert data == 'c650a478ae7eeb2e8f2c08942702c1c9' #经过EnigmaNigel加密之后的密文
    except Exception as e:
        print(e)
        os._exit(1)





