function pytest-cov-all -d 'Run py.test missing with missing and html coverage'
    py.test --cov-report term-missing --cov-report html --cov $argv tests/
end
