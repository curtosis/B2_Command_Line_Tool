
.PHONY: test

test:
	@if [[ -z "$${PYTHON_VIRTUAL_ENVS}" ]]; \
	then \
	    PYTHONPATH=`pwd` nosetests -w test; \
	else \
	    for virtual_env in $${PYTHON_VIRTUAL_ENVS}; \
	    do \
	        echo; \
	        echo Activating $${virtual_env}; \
	        echo; \
	        source $${virtual_env}/bin/activate; \
	        PYTHONPATH=`pwd` nosetests -w test; \
	    done; \
	fi
