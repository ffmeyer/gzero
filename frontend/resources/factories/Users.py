from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed =  bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def users_to_insert_db():
    return [
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek'),
        factory_user('search_alien'),
        factory_user('search_common'),
        factory_user('searcher')        
    ]

def factory_user(target):
    data = {
        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'        
            },

        'wrong_email': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': 'email&hotmail.com',
            'password': 'pwd123'        
            }, 

        'login': {
            'name': 'Felipe',
            'lastname': 'Meyer',
            'email': 'felipe@gmail.com',
            'password': 'pwd123'        
            },

        'be_geek': {
            'name': 'Kim',
            'lastname': 'Dotcom',
            'email': 'kim@doc.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': 'Seu computador esta lento?, reiniciando do nada talvez seja um virus e se for o caso ate removo o baidu',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
                }
            },
        'attempt_be_geek': {
        'name': 'Dio',
        'lastname': 'Linux',
        'email': 'dio@linux.com',
        'password': 'pwd123',
        'geek_profile': {
            'whats': '11999999999',
            'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS,  PopOS,  Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, Redhat, Cent OS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suse, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro, Big Linux, ZorinOS, Nitrux',
            'printer_repair': 'Não',
            'work': 'Ambos',
            'cost': '150'
                }
            }, 

        'searcher':{
            'name': 'Johnny',
            'lastname': 'Lawrence',
            'email': 'johnny@cobrakai.com',
            'password': 'pwd123', 
        },

        'search_alien': {
        'name': 'Dok',
        'lastname': 'Ock',
        'email': 'doc@oscorp.com',
        'password': 'pwd123', 
        'geek_profile': {
                'whatsapp': '21999991001',
                'desc': 'Faco conserto de qualquer impressora. Matricial a fita, Matricial a fita colorida, a laser, a jato de tinta e tambem impressora 3D.',
                'printer_repair': 'Sim',
                'work': 'Presencial',
                'cost': '250'
                }
            },        
            
        'search_common': {
        'name': 'Peter',
        'lastname': 'Parker',
        'email': 'peter@oscorp.com',
        'password': 'pwd123'
        
            }


    }
    return data[target]