function pytest-cov-html -d 'Run py.test missing with html coverage'
    py.test --cov-report html --cov $argv tests/
    open htmlcov/index.html
end
