
# install coreutils and gnupg
sudo apt install coreutils
sudo apt install gnupg

# download the keys 
gpg --keyid-format long --keyserver hkp://keyserver.ubuntu.com --recv-keys 0x46181433FBB75451 0xD94AA3F0EFE21092

# inspect the keys
gpg --keyid-format long --list-keys --with-fingerprint 0x46181433FBB75451 0xD94AA3F0EFE21092
 

# verify the keys 
gpg --keyid-format long --verify SHA256SUMS.gpg SHA256SUMS


# checksum for iso
sha256sum -c SHA256SUMS 2>&1 | grep OK


# the checksum for the iso
echo "22580b9f3b186cc66818e60f44c46f795d708a1ad86b9225c458413b638459c4 *ubuntu-18.04.2-desktop-amd64.iso" | shasum -a 256 --check
