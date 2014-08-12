# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
MovieApp::Application.config.secret_key_base = '30de6971e2133a640d6b1a563120df6d12f79810e5c992df36baf8b2b0fdf9a30488e1740f81669a8519e2a15cabaa1910271f29ba6f406bd875ed3c292ac0c2'
