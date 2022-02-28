from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed =  bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user():

    first_name = fake.first_name()
    last_name = fake.last_name()

    return {
        "name": first_name,
        "lastname": last_name,
        "email": fake.free_email(),
        "password": "pwd123"        
    }

def factory_wrong_email():

    first_name = fake.first_name()
    last_name = fake.last_name()
    
    return  {
        "name": first_name,
        "lastname": last_name,
        "email": first_name.lower() + "_" + last_name.lower() + "&hotmail.com",
        "password": "pwd123"        
    }




def factory_user_login():

    return  {
        "name": 'Felipe',
        "lastname": 'Meyer',
        "email": "felipe@gmail.com",
        "password": "pwd123"        
    }    