# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Cookbook::Application.config.secret_key_base = 'ae81db222a7c0744e2b8930f191ba6fab2cf85aa3f6544fca690d4bf16d182e1db2251f0f175b1f4556c7d9ea6a78cf7c19c35a741911451275489c689f6b439'
