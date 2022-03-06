
def factory_new_user():

    data = {
        'signup': {
            "name": "Clint Barton", 
            "email": "barton@shield.com", 
            'password': 'pwd123'
        }
    } 

    return data

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