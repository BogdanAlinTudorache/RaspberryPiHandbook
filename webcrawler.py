# Import libraries
import requests
import time
from bs4 import BeautifulSoup as soup

# Configuration
headers = {'user-agent': 'Mozilla/5.0'}
url = "http://berrynews.org/netherlands-en.html?"
sleep_time = 1  # time in seconds

# Make request and parse HTML
try:
    print("Fetching data...")
    time.sleep(sleep_time)  # Respect rate limiting
    page = requests.get(url, headers=headers)
    page.raise_for_status()  # Raise HTTPError for bad responses
    htmlpage = soup(page.content, 'html.parser')
except requests.RequestException as e:
    print(f"An error occurred: {e}")
    exit()

# Extract and print data
print("Extracting data...")
try:
    print("Page header1:", htmlpage.h1.text)
except AttributeError:
    print("Could not find the specified tag.")

# Save to a file, database, or other storage (optional)
