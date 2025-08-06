#!/bin/bash

VENV_DIR="venv"
PACKAGE="krypto_gui_smalk"

if [ ! -d "$VENV_DIR" ]; then
    echo "Creating venv..."
    python3 -m venv $VENV_DIR
    echo "Updating pip..."
    . $VENV_DIR/bin/activate
    pip install --upgrade pip
    echo "Installing $PACKAGE..."
    pip install $PACKAGE
    deactivate
else
    echo "venv already exists."
fi

echo "Starting $PACKAGE..."
. $VENV_DIR/bin/activate
pip install --upgrade $PACKAGE
pip install --upgrade $PACKAGE
$PACKAGE
deactivate
