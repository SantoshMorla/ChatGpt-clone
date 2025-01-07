import base64

# Your signing key
key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MzYyMzQ3NzF9.1sU_Zs-JZtV0mxnFOj4oLcueZy4IFT0MyLM2Eb-NPj8"

# Encode the key in Base64
encoded_key = base64.b64encode(key.encode()).decode()

print("Base64 Encoded Key:", encoded_key)
