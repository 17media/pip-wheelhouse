all: python3.5 python3.6

python3.5:
	xargs -r -a requirements.py35.txt -n 1 docker run -i --rm -v "$(shell pwd):/wheelhouse" 17media/python:3.5.3-builder

python3.6:
	xargs -r -a requirements.py35.txt -n 1 docker run -i --rm -v "$(shell pwd):/wheelhouse" 17media/python:3.6.1-builder
