#!/bin/bash
# fecha revision   2025-08-25  23:36

logito="ins_pyworld_final.txt"
# si ya corrio esta seccion, exit
[ -e "/home/$USER/log/$logito" ] && exit 0

# requiero que el system este instalado
[ ! -e "/home/$USER/log/ins_system.txt" ] && exit 1
[ ! -e "/home/$USER/log/ins_pyworld_inicial.txt" ] && exit 1



source  /home/$USER/cloud-install/sh/common.sh

# Instalo Python SIN  Anaconda, Miniconda, etc-------------------------------
# Documentacion  https://docs.python-guide.org/starting/install3/linux/


source  /home/$USER/.venv/bin/activate

# instalo paquetes de Python
/home/gustavo_denicolay/.local/bin/uv pip install  \
    Pandas  Scikit-learn  Statsmodels       \
    Numpy  Matplotlib  fastparquet          \
    pyarrow  tables  plotly  seaborn xlrd   \
    scrapy  SciPy  wheel  testresources     \
    Requests  Selenium  PyTest  Unit        \
    dask  numba  polars  Flask 

/home/gustavo_denicolay/.local/bin/uv pip install  duckdb  jupysql  duckdb-engine

/home/gustavo_denicolay/.local/bin/uv pip install  XGBoost  LightGBM  CatBoost HyperOpt  optuna

/home/gustavo_denicolay/.local/bin/uv pip install  Boruta lime

# AutoML varios
/home/gustavo_denicolay/.local/bin/uv pip install  h2o
/home/gustavo_denicolay/.local/bin/uv pip install  flaml
/home/gustavo_denicolay/.local/bin/uv pip install  tpot

/home/gustavo_denicolay/.local/bin/uv pip install --no-deps  evalml

# Keras
/home/gustavo_denicolay/.local/bin/uv pip install  Keras

# librerias puntuales
/home/gustavo_denicolay/.local/bin/uv pip install  kaggle  zulip  pika  gdown  mlflow
/home/gustavo_denicolay/.local/bin/uv pip install  black[jupyter] category-encoders colorama featuretools holidays

/home/gustavo_denicolay/.local/bin/uv pip install \
   imbalanced-learn ipywidgets kaleido nlp-primitives pmdarima scikit-optimize --no-build-isolation --index-strategy unsafe-best-match

/home/gustavo_denicolay/.local/bin/uv pip install  shap sktime texttable tomli woodwork[dask]
/home/gustavo_denicolay/.local/bin/uv pip install  nbconvert[webpdf]
/home/gustavo_denicolay/.local/bin/uv pip install  nb_pdf_template


/home/gustavo_denicolay/.local/bin/uv pip install  pydbus

/home/gustavo_denicolay/.local/bin/uv pip install  shap
/home/gustavo_denicolay/.local/bin/uv pip install  dask-expr
/home/gustavo_denicolay/.local/bin/uv pip install  umap umap-learn 



bitacora   "python packages final"

# grabo
fecha=$(date +"%Y%m%d %H%M%S")
echo $fecha > /home/$USER/log/$logito
