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
uv pip install  Pandas  Scikit-learn  Statsmodels       \
              Numpy  Matplotlib  fastparquet          \
              pyarrow  tables  plotly  seaborn xlrd   \
              scrapy  SciPy  wheel  testresources     \
              Requests  Selenium  PyTest  Unit        \
              dask  numba  polars  Flask 

uv pip install  duckdb  jupysql  duckdb-engine

uv pip install  XGBoost  LightGBM  CatBoost HyperOpt  optuna

uv pip install  Boruta lime

# AutoML varios
uv pip install  h2o
uv pip install  flaml
uv pip install  tpot

uv pip install --no-deps  evalml

# Keras
uv pip install  Keras

# librerias puntuales
uv pip install  kaggle  zulip  pika  gdown  mlflow
uv pip install  black[jupyter] category-encoders colorama featuretools holidays
uv pip install  imbalanced-learn ipywidgets kaleido nlp-primitives pmdarima scikit-optimize --no-build-isolation
uv pip install  shap sktime texttable tomli woodwork[dask]
uv pip install  nbconvert[webpdf]
uv pip install  nb_pdf_template


uv pip install  pydbus

uv pip install  shap
uv pip install  dask-expr
uv pip install  umap umap-learn 



bitacora   "python packages final"

# grabo
fecha=$(date +"%Y%m%d %H%M%S")
echo $fecha > /home/$USER/log/$logito
