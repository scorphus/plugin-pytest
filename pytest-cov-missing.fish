function pytest-cov-missing -d 'Run py.test missing with missing coverage'
    py.test --cov-report term-missing --cov $argv tests/
end
