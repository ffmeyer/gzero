robot -l NONE -o NONE -r NONE tasks/Delorean.robot
#robot -d ./logs -i i_pass tests/Signup.robot
#obot -d ./logs tests/Signup.robot
robot -d ./logs -i i_email tests/Login.robot
#obot -d ./logs tests/Login.robot