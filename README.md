# Kill Chrome
This script kill the google-chrome and chromium browsers if the memory runs out.

# Use
```
./KillChrome.sh [limit]
```

The limit param - the top level of memory at reaching which the Chrome will be killed.

# Use on background
Add the following code in $HOME/.xinitrc file.
```
while true; do
  bash <path_to_script>KillChrome.sh &
  sleep 0.5
done &
```

The script will be execute each half a second.