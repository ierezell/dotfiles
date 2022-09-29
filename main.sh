SCRIPT_FOLDER="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

pacman -S git --noconfirm
source ${SCRIPT_FOLDER}/clone_repository.sh
source ${SCRIPT_FOLDER}/install_packages.sh
source ${SCRIPT_FOLDER}/install_aur_packages.sh
source ${SCRIPT_FOLDER}/i3_config.sh
source ${SCRIPT_FOLDER}/change_shell.sh
source ${SCRIPT_FOLDER}/echo_mount_disk.sh