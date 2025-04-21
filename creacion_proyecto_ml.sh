#!/bin/bash

# -------------------------------------------------------------------
# Plantilla para Proyectos de Machine Learning
# Creador: Tu Nombre
# Fecha: $(date +"%Y-%m-%d")
# -------------------------------------------------------------------

# Nombre del proyecto (cambiar según necesidad)
PROJECT_NAME="mi-proyecto-ml"

# Crear estructura de directorios
mkdir -p ${PROJECT_NAME}/{data/{raw,processed,external,interim},models/{production,experiments},src/{data,features,models,pipelines,utils},config,notebooks,tests,docs,reports/{figures,metrics},.github/workflows,environments}

# Crear archivos base
touch ${PROJECT_NAME}/{
  .gitignore,
  Makefile,
  requirements.txt,
  pyproject.toml,
  dvc.yaml,
  params.yaml,
  config/main.yaml,
  config/paths.yaml,
  data/raw/.gitkeep,
  data/processed/.gitkeep,
  data/external/.gitkeep,
  data/interim/.gitkeep,
  models/production/.gitkeep,
  models/experiments/.gitkeep,
  src/data/make_dataset.py,
  src/data/preprocess.py,
  src/features/build_features.py,
  src/features/selection.py,
  src/models/train.py,
  src/models/predict.py,
  src/models/evaluate.py,
  src/pipelines/training_pipeline.py,
  src/utils/logger.py,
  src/utils/helpers.py,
  notebooks/01-eda.ipynb,
  notebooks/02-experimentos.ipynb,
  tests/test_data.py,
  tests/test_models.py,
  docs/architecture.md,
  docs/api.md,
  .github/workflows/ci.yml,
  environments/environment.yml
}

# Inicializar control de versiones
cd ${PROJECT_NAME}
git init
dvc init

# Mensaje final
echo -e "\n\033[1;32m✅ Estructura creada en: ${PROJECT_NAME}\033[0m"
echo "Ejecuta estos comandos para completar la configuración:"
echo -e "\n\033[1;36mcd ${PROJECT_NAME}"
echo "dvc remote add -d myremote [tu-storage-s3-gcs-etc]"
echo "git add . && git commit -m 'Initial commit'\033[0m\n"