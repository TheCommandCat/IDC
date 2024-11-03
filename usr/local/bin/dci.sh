#1/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

editor="${1:-nano}"


if command -v "$editor" >/dev/null 2>&1; then
  echo "--- $editor editor was choosen ---"
else
  echo "$editor was not found, please enter a valid editor"
  exit 1 
fi

"$editor" ./compose.yaml

if test -f ./compose.yaml; then
  echo "Compose file was written successfully"
  echo "running docker-compose"
  echo ""
  docker compose up  
  echo ""

else
  echo "File returned is empty, Please make sure you enter your docker compose script"
  exit 1
fi

echo "removing compose file..."
rm compose.yaml

echo "Have fun with your brand new containers! :)"
