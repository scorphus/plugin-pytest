function pytest-cov-html -d 'Run py.test missing with html coverage'
    if test (count $argv) -ne 1
        set module (basename (pwd))
        echo "Guessed module name: $module"
    else
        set module $argv
    end
    py.test --cov-report html --cov $module tests/ ^ /dev/null
    set exit_code $status
    test $exit_code -eq 2; \
        and echo "Tip: did you `pip install pytest-cov`?"; and return $exit_code
    open htmlcov/index.html
    return $exit_code
end
