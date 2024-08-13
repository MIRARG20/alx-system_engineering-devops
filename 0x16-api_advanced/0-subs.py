#!/usr/bin/python3
"""Function to query subscribers on a given Reddit subreddit."""
import requests

def number_of_subscribers(subreddit):
    """Return the total number of subscribers on a given subreddit."""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    
    # Debugging: Print status code and response headers
    print(f"Status Code: {response.status_code}")
    print(f"Response Headers: {response.headers}")

    if response.status_code == 404:
        return 0
    
    # Check if the response is JSON before attempting to parse it
    content_type = response.headers.get("Content-Type")
    if "application/json" in content_type:
        results = response.json().get("data")
        return results.get("subscribers")
    else:
        print("Received non-JSON response:", response.text)
        return 0
