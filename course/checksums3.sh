# In Linux, you can use various commands and tools to calculate and verify checksums for files. A checksum is a cryptographic hash function that generates a fixed-size string of characters (checksum value) based on the content of a file. The most commonly used checksum algorithms are MD5, SHA-1, and SHA-256.

# Here are some common tools for calculating and verifying checksums:


## check utilities
ls /usr/bin/*sum

md5sum file_name
sha1sum file_name
sha256sum file_name

Replace file_name with the name of the file for which you want to calculate the checksum.

# Verifying Checksums:
# When you download a file from a website, it often comes with a corresponding checksum file (e.g., file_name.md5, file_name.sha1, file_name.sha256). You can use the following commands to verify the integrity of the downloaded file:

md5sum -c file_name.md5
sha1sum -c file_name.sha
sha256sum -c file_name.sha256

# These commands will check if the calculated checksum matches the one provided in the checksum file. If the checksums match, it indicates that the downloaded file is intact and has not been corrupted during the download process.

# Note: While MD5 was widely used for checksums in the past, it is now considered weak and vulnerable to collision attacks. For better security, it's recommended to use SHA-256 or other stronger hash functions.

md5sh script.sh

sha256sum script.sh

sha256sum --check checksums.txt 
