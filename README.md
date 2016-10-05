# docker-bug-report-3106

Running docker-compose with `tty: true`
dumps a a log file with weird output even i disabled colored output:

```
Attaching to dockercomposestderrstdouttest_test_1
test_1  | t be go to stdout                 *****
test_1  | this must be go to stderr
test_1  | ot:error                          *****
test_1  | WARNING:root:warning
dockercomposestderrstdouttest_test_1 exited with code 0
```

which should be 
```
Attaching to dockercomposestderrstdouttest_test_1
test_1  | this must be go to stdout
test_1  | this must be go to stderr
test_1  | ERROR:root:error
test_1  | WARNING:root:warning
dockercomposestderrstdouttest_test_1 exited with code 0
```

and also tested with boot2docker on virtual box, I am getting:

```
Attaching to dockercomposestderrstdouttest_test_1
test_1  | t be go to stdout                  *****
test_1  | this must be go to stderr
test_1  | ERROR:root:error
test_1  | WARNING:root:warning
dockercomposestderrstdouttest_test_1 exited with code 0
```

I added the output from `--verbose` flag to repository.