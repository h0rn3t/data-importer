# Make content for developer

setup:
	pip install -r requirements.txt

test:
	python manage.py test data_importer -v2

coverage:
	python manage.py test data_importer -v2 --with-coverage

send_package:
	python setup.py register sdist upload

clean:
	find . -name '*.pyc' -delete
	rm -rf django_choices_flow.egg-info
	rm -rf dist

