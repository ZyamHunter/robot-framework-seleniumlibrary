import os
from dotenv import load_dotenv


def get_enviroment_variables():
    load_dotenv()

    environment_variables = {
        'USER_EMAIL': os.getenv('USER_EMAIL'),
        'USER_PASSWORD': os.getenv('USER_PASSWORD'),
        'BASE_URL': os.getenv('BASE_URL')
    }

    return environment_variables