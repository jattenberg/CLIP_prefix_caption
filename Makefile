VENV := venv

install: setup
	echo $VENV
	$(VENV)/bin/pip install -r requirements.dev.txt

venv:
	echo "building virtualenv: $(VENV)"
	virtualenv $(VENV)

setup: venv
	$(VENV)/bin/pip install --upgrade pip pytest

clean: 
	rm -rf $(VENV)
