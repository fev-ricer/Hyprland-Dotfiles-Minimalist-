# 1. Оповещение
while true; do
    read -p "Would you want to install the dependencies? (y/n): " yn
    case $yn in
        [Yy]* ) 
            echo "Installing..."
            sudo apt install mc cava btop kitty swaybg waybar wofi firefox grimshot network-manager-gnome wf-recorder variety feh
            break ;;
        [Nn]* ) 
            echo "OK."
            break ;;
        * ) 
            echo "Please, enter y (yes) or n (no)." ;;
    esac
done
