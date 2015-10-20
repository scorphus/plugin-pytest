function pytest-cov-html -d 'Run py.test missing with html coverage'
    py.test --cov-report html --cov $argv tests/
    set exit_code $status
    test $exit_code -eq 2; \
        and echo "Tip: did you `pip install pytest-cov`?"; and return $exit_code
    open htmlcov/index.html
    return $exit_code
end
