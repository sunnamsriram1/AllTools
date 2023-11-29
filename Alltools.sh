#!/bin/bash

# Function to display a progress bar
function show_progress() {
    local duration=$1
    local progress_char="."
    local progress_interval=1

    # Calculate the number of steps based on duration and interval
    local num_steps=$((duration / progress_interval))

    for ((i=0; i<num_steps; i++)); do
        echo -n "$progress_char"
        sleep $progress_interval
    done

    # Move the cursor to the next line after the progress bar
    echo
}

# Define repository URLs
REPO_URLS=(
    "https://github.com/sunnamsriram1/TeluguAI.git"
    "https://github.com/sunnamsriram1/Mr.Hide.git"
    "https://github.com/sunnamsriram1/InstaUser5.git"
    "https://github.com/sunnamsriram1/FindUser_URLs.git"
    "https://github.com/sunnamsriram1/InstaUpdate.git"
    "https://github.com/sunnamsriram1/IPI_Rover.git"
    "https://github.com/sunnamsriram1/InstaIDU.git"
    "https://github.com/sunnamsriram1/Bard.git"
    "https://github.com/sunnamsriram1/File-.git"
    "https://github.com/sunnamsriram1/IndianFlag.git"
    "https://github.com/sunnamsriram1/Ultron2.git"
    "https://github.com/sunnamsriram1/python-mini-projects.git"
    "https://github.com/sunnamsriram1/lscript.git"
    "https://github.com/sunnamsriram1/Termux-Login.git"
    "https://github.com/sunnamsriram1/Ghost-Droid.git"
    "https://github.com/sunnamsriram1/AnonYm8.git"
    "https://github.com/sunnamsriram1/cupp.git"
    "https://github.com/sunnamsriram1/TBomb1.git"
    "https://github.com/sunnamsriram1/Anonymous.git"
    "https://github.com/sunnamsriram1/shodan-Eye.git"
    "https://github.com/sunnamsriram1/AdPhishing.git"
    "https://github.com/sunnamsriram1/payloads.git"
    "https://github.com/sunnamsriram1/ransomeware.git"
    "https://github.com/sunnamsriram1/kalinethunter.git"
    "https://github.com/sunnamsriram1/TBombv2.0.git"
    "https://github.com/sunnamsriram1/id.git"
    "https://github.com/sunnamsriram1/Amer.git"
    # Add more repository URLs as needed

)

# Specify destination directory
DEST_DIR="Repositories"

# Loop through repository URLs and clone them
for url in "${REPO_URLS[@]}"; do
    echo "Cloning $url..."
    git clone --progress "$url" "$DEST_DIR/$(basename $url .git)" &

    # Show progress dots during the download
    show_progress 10

    # Wait for the git clone process to finish
    wait

    echo "$url Cloned Successfully!"
done

echo "All Repositories Downloaded Successfully!"
