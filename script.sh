# /bin/bash

cd /home/tc/.mozilla/firefox/
cd *.default-release
touch users.js
printf "user_pref(\"browser.sessionstore.resume_from_crash\", false);\n" > users.js
echo "HTML uri of project please"
read uri
printf "user_pref(\"browser.startup.homepage\", \"" > users.js
printf uri > users.js
printf "\");\n" > users.js
