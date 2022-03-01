from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed =  bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user(target):
    data = {
        'faker': {
            "name": fake.first_name(),
            "lastname": fake.last_name(),
            "email": fake.free_email(),
            "password": "pwd123"        
            },

        'wrong_email': {
            "name": fake.first_name(),
            "lastname": fake.last_name(),
            "email": "email&hotmail.com",
            "password": "pwd123"        
            }, 

        'login': {
            "name": 'Felipe',
            "lastname": 'Meyer',
            "email": "felipe@gmail.com",
            "password": "pwd123"        
            },

        'be_geek': {
            "name": 'Kim',
            "lastname": 'Dotcom',
            "email": "kim@doc.com",
            "password": "pwd123",
            "geek_profile": {
                'whats': '11999999999',
                'desc': 'Seu computador esta lento?, reiniciando do nada talvez seja um virus e se for o caso ate removo o baidu',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
                }
            },
        'attempt_be_geek': {
        "name": 'Dio',
        "lastname": 'Linux',
        "email": "dio@linux.com",
        "password": "pwd123",
        "geek_profile": {
            'whats': '11999999999',
            'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS,  PopOS,  Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, Redhat, Cent OS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suse, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro, Big Linux, ZorinOS, Nitrux',
            'printer_repair': 'Não',
            'work': 'Ambos',
            'cost': '150'
                }
            }


    }
    return data[target]