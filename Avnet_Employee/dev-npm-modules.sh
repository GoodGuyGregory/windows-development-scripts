#! /bin/bash

echo "installing global npm dev modules"
echo "================================"

# modules array: 
npmDevModules=("nativescript" "@angular/cli" "create-react-app" "@vue/cli")

for module in ${npmDevModules[@]}; do
        echo "installing $module module..."
        echo "================================"
        # wait for 5 seconds...
        sleep 5
        npm install -g  $module
        echo "================================"
        
done

        echo "done.. enjoy your new PC"



