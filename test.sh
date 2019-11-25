#!/bin/sh
source venv/bin/activate
while true; do
    flask db upgrade
    if [[ "$?" == "0" ]]; then
        break
    fi
    echo db migration failed, retrying in 5 secs...
    sleep 5
done
pylint --rcfile=.pylintrc app tests
python -m coverage run --rcfile=.coveragerc -m py.test -c pytest.ini tests/unit
python -m coverage run --rcfile=.coveragerc -m py.test -c pytest.ini tests/integration
