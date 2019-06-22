# import the tails signing keys 
wget https://tails.boum.org/tails-signing.key
gpg --import < tails-signing.key

# install the debian keyring
sudo apt install debian-keyring

# Import the OpenPGP key of Stefano Zacchiroli. 
gpg --keyring=/usr/share/keyrings/debian-keyring.gpg --export zack@upsilon.cc | gpg --import


# verify the certifications on tails signing keys. 
gpg --keyid-format 0xlong --check-sigs A490D0F4D311A4153E2BB7CADBB802B258ACD84F


# sign this key with your own key to build more trust
# Doing so allows people who verified your key to verify your certification and, as a consequence, build more trust in the Tails signing key.
gpg --lsign-key A490D0F4D311A4153E2BB7CADBB802B258ACD84F
gpg --sign-key A490D0F4D311A4153E2BB7CADBB802B258ACD84F
gpg --send-keys A490D0F4D311A4153E2BB7CADBB802B258ACD84F

# download the usb image 
wget --continue http://dl.amnesia.boum.org/tails/stable/tails-amd64-3.14.1/tails-amd64-3.14.1.img
# download the signature
wget https://tails.boum.org/torrents/files/tails-amd64-3.14.1.img.sig

# verify the usb image by the tails signing keys
TZ=UTC gpg --no-options --keyid-format long --verify tails-amd64-3.14.1.img.sig tails-amd64-3.14.1.img

# download the page for instructions
wget https://tails.boum.org/install/expert/usb/index.en.html

