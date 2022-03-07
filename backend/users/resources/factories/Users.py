
def factory_new_user():
    return  {
        "name": "Clint Barton",
        "email": "barton@shield.com",
        "password": "pwd123"
    } 
    

def factory_get_user():
    return {
        "name": "Gwen Stacy",
        "email": "Stacy@ozcorp.com",
        "password": "pwd123"
    } 

def factory_remove_user():
    return {
        "name": "Thaddeus Ross",
        "email": "Stacy@gmail.com",
        "password": "pwd123"
    } 


def factory_user_session(target):
    name = 'Kate Bishop'
    email ='kate@hotmail.com'
    password = 'pwd123'

    data = {
        'signup': {
            'name': name,
            'email':  email,
            'password': password
        }, 
        'login': {
            'name': name,
            'email':  email,
            'password': password
        }
    } 

    return data[target]