#!/bin/bash

# Set default values for environment variables if not provided
export MLFLOW_BACKEND_URI=${MLFLOW_BACKEND_URI:-/mlflow/mlruns}
export MLFLOW_ARTIFACT_ROOT=${MLFLOW_ARTIFACT_ROOT:-/mlartifacts}
export MLFLOW_AUTH_CONFIG_PATH=${MLFLOW_AUTH_CONFIG_PATH:-/mlflow/basic_auth.ini}
export MLFLOW_FLASK_SERVER_SECRET_KEY="my-secret-key"
export MLFLOW_HOST=${MLFLOW_HOST:-0.0.0.0}
export MLFLOW_PORT=${MLFLOW_PORT:-5000}

# Print configuration for debugging
echo "Starting MLflow Tracking Server with the following configuration:"
echo "Backend URI: $MLFLOW_BACKEND_URI"
echo "Artifact Root: $MLFLOW_ARTIFACT_ROOT"
echo "Artifact Root: $MLFLOW_FLASK_SERVER_SECRET_KEY"
mlflow server --host 0.0.0.0 --port 5000 --app-name basic-auth 