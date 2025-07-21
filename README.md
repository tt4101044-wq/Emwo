import requests

# Replace with your GitHub username and token
USERNAME = 'tt4101044'
TOKEN = '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'

REPO_NAME = 'Please-Donate-Script-Hub'
DESCRIPTION = 'A donation script hub. Please consider supporting the project!'
PRIVATE = False

def create_repo():
    url = 'https://api.github.com/user/repos'
    headers = {'Authorization': f'token {TOKEN}'}
    data = {
        'name': REPO_NAME,
        'description': DESCRIPTION,
        'private': PRIVATE,
        'auto_init': True  # Create with README
    }

    response = requests.post(url, json=data, headers=headers)

    if response.status_code == 201:
        print(f"✅ Repository '{REPO_NAME}' created successfully.")
    else:
        print(f"❌ Failed to create repository: {response.status_code}")
        print(response.json())

if __name__ == '__main__':
    create_repo()
