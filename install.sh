#!/bin/zsh

# Set up Python version using pyenv
echo "Setting Python version using pyenv..."
pyenv install -s 3.10.12
pyenv local 3.10.12

# Create and activate a virtual environment
echo "Setting up Python virtual environment..."
python3.10 -m venv coqui_env
source coqui_env/bin/activate

# Upgrade pip within the virtual environment
echo "Upgrading pip..."
pip install --upgrade pip

# Install required Python packages
echo "Installing required Python packages..."
pip install -r requirements.txt

echo "All Python dependencies have been installed."
echo "The virtual environment 'coqui_env' is activated."
echo "You can now run your script using 'python coqui_tts_script.py'."

# Keep the virtual environment activated and provide instructions to run the script
source coqui_env/bin/activate && zsh
