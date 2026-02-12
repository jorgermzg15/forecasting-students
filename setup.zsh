#!/bin/zsh

# Get the directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Function to setup environment
setup_environment() {
    local project_dir=$1
    
    # Create virtual environment
    echo "Creating virtual environment in $project_dir..."
    python -m venv "$project_dir/.venv"
    
    # Activate virtual environment
    source "$project_dir/.venv/bin/activate"
    
    # Install requirements
    echo "Installing packages from requirements.txt..."
    pip install -r "$SCRIPT_DIR/requirements.txt"
    
    # Create .vscode directory and settings.json
    mkdir -p "$project_dir/.vscode"
    cat > "$project_dir/.vscode/settings.json" << EOF
{
    "python.defaultInterpreterPath": "${project_dir}/.venv/bin/python",
    "python.terminal.activateEnvironment": true
}
EOF
    
    echo "Environment setup complete for $project_dir!"
}

# Check if directory argument is provided
if [ $# -eq 0 ]; then
    echo "Please provide the project directory as an argument"
    exit 1
fi

setup_environment "$1"