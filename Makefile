install:
	pip install --upgrade pip && \
		pip install -r requirements.txt 

install-gpc:
	pip install --upgrade pip && \
		pip install -r requirements-gpc.txt && \
		pip install git+

install-aws:
	pip install --upgrade pip && \
		pip install -r requirements-aws.txt && \
		pip install git+

install-azure:
	pip install --upgrade pip && \
		pip install -r requirements-azure.txt && \
		pip install git+

lint:
	pylint --disable=R,C, hello.py 

format:
	black *.py

test:
	pytest -m pytest -vv --cov=hello test_hello.py --cov-report=term-missing --cov-report=html \
		--cov-report=xml --cov-config=.coveragerc
