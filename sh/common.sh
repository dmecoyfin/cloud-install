#!/bin/bash
# fecha revision   2025-09-15  23:15

webfiles="https://storage.googleapis.com/open-courses/dmeyf2025-e4a2"

gcprojectprefix="dmecoyfin-"
gcprojectname="uba-dmecoyfin2025"

dataset1="competencia_01_crudo.csv"
dataset2="competencia_02_crudo.csv.gz"
dataset3="competencia_03_crudo.csv.gz"
dataset4="competencia_04_crudo.csv.gz"
pseudopublic="list"

export zulipbot="GoogleCloud-bot@uba25.zulip.rebelare.com:gUzTYazav6Bl7gCfF4gWCQ9a4lVEnkSF"
export zulipurl="https://uba25.zulip.rebelare.com/api/v1/messages"

kaggleprueba="102_kaggle_prueba.r"

kaggle_competencia_01="dm-ey-f-2025-primera"
kaggle_competencia_02="dm-ey-f-2025-segunda"
kaggle_competencia_03="dm-ey-f-2025-tercera"

export github_catedra_user="dmecoyfin"
export github_catedra_repo="dmeyf2025"
export github_install_repo="cloud-install"

export mlflow_usuario="dmeyf2025"
export mlflow_clave="constructivism"

repo_check_directory="src/arboles"
repo_check_file="z0201_ComparandoModelos.ipynb"

tabulador="	"
logfile="/home/$USER/install/log_install.txt"

MIHOST=$(echo $HOSTNAME | /usr/bin/cut -d . -f1)

bitacora () {
  local fecha=$(date +"%Y%m%d %H%M%S")

  echo "$fecha""$tabulador""$1"  >>  "$logfile"
}
