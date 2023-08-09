echo " --- Move to the right directory. ---"

# Make sure you're home
cd ~

# Clone the repository to a temporary folder and switch to the "build" branch:
echo " --- Clone repo ---"
git clone --depth 1 --branch build https://github.com/cu-idlab/lab-www.git ~/tmp/lab-www

# Save the current commit hash to a file
cd ~/tmp/lab-www
last_commit_hash=$(git rev-parse HEAD)
echo "$last_commit_hash" > ~/build_git_hash.txt

## Check to see if the website has changed before continuing
# Read the last commit hash from the file
stored_commit_hash=$(cat ~/build_git_hash.txt)

# Get the latest commit hash from the repository
current_commit_hash=$(git rev-parse HEAD)

# Compare the commit hashes
if [ "$stored_commit_hash" != "$current_commit_hash" ]; then
    # Proceed with the script
    echo "Repository has changed. Proceeding with the update..."
else
    # Exit the script since there are no changes
    echo "No changes in the repository. Exiting..."
    exit
fi

# Update the stored commit hash
echo "$current_commit_hash" > ~/build_git_hash.txt

# Make a backup
echo " --- Make a backup. ---"
mkdir -p ~/backups/
tar -czf ~/backups/idlab-$(date +%Y-%m-%d-%H-%M-%S).tar.gz /data/web/html/cmci.colorado.edu/idlab/

# Copy the files from the repository to the destination folder and exclude the .git directory:
echo " --- Publish website ---"
rsync -av --exclude='.git' ~/tmp/lab-www/ /data/web/html/cmci.colorado.edu/idlab/

# Remove the temporary folder
rm -rf ~/tmp/lab-www

# To delete all backups except the most recent one, the most recent one prior to today, the one from last month, and the one from last year:

# Save the most recent backup file
most_recent=$(ls -1t ~/backups/* | head -n1)

# Save the most recent backup file from last month
last_month=$(date -d "$(date +%Y-%m-15) -1 month" +%Y-%m-)*
most_recent_last_month=$(ls -1t ~/backups/$last_month | head -n1)

# Save the most recent backup file from last year
last_year=$(date -d "$(date +%Y-01-01) -1 year" +%Y)*
most_recent_last_year=$(ls -1t ~/backups/$last_year | head -n1)

# Delete all files except the most recent ones
find ~/backups/ -maxdepth 1 -type f -not -name "$(basename "$most_recent")" -not -name "$(basename "$most_recent_last_month")" -not -name "$(basename "$most_recent_last_year")" -delete