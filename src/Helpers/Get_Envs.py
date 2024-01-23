import os
from dotenv import load_dotenv


def get_enviroment_variables():
    load_dotenv()

    environment_variables = {
        'USER_EMAIL': os.getenv('USER_EMAIL'),
        'USER_PASSWORD': os.getenv('USER_PASSWORD'),
        'BASE_URL': os.getenv('BASE_URL'),
        'SLACK_WEBHOOK': os.getenv('SLACK_WEBHOOK')
    }

    return environment_variables