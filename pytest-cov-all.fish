function pytest-cov-all -d 'Run py.test missing with missing and html coverage'
    py.test --cov-report term-missing --cov-report html --cov $argv tests/
    set exit_code $status
    test $exit_code -eq 2; and echo "Tip: did you `pip install pytest-cov`?"
    return $exit_code
end
