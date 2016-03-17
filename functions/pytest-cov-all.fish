function pytest-cov-all -d 'Run py.test missing with missing and html coverage'
    if test (count $argv) -ne 1
        set module (basename (pwd))
        echo "Guessed module name: $module"
    else
        set module $argv
    end
    py.test --cov-report term-missing --cov-report html --cov $module tests/
    set exit_code $status
    test $exit_code -eq 2; and echo "Tip: did you `pip install pytest-cov`?"
    return $exit_code
end
