name: CI/CD Pipeline

# Trigger bij push naar main
on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
    # 1. Checkout de code
    - name: Checkout repo
      uses: actions/checkout@v3

    # 2. Installeer kubectl
    - name: Set up kubectl
      uses: azure/setup-kubectl@v3
      with:
        version: 'latest'

    # 3. Configureer kubeconfig vanuit GitHub secret
    - name: Configure kubeconfig
      run: |
        mkdir -p $HOME/.kube
        echo "${{ secrets.KUBECONFIG }}" > $HOME/.kube/config

    # 4. Deploy de monitoring resources
    - name: Deploy monitoring
      run: |
        # check of het script bestaat
        if [ ! -f ./deploy-monitoring.sh ]; then
          echo "Error: deploy-monitoring.sh not found!"
          exit 1
        fi

        chmod +x ./deploy-monitoring.sh
        ./deploy-monitoring.sh
