VENV_DIR := venv

install: $(VENV_DIR)/bin/activate
	$(VENV_DIR)/bin/pip install -r requirements.txt

run: $(VENV_DIR)/bin/activate
	$(VENV_DIR)/bin/python app.py

$(VENV_DIR)/bin/activate: 
	python3 -m venv $(VENV_DIR)
	@echo "Virtual environment created at $(VENV_DIR)"
