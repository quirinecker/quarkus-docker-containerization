#!/usr/local/bin/bash

start=`python -c 'import time; print(repr(time.time()))'`

while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:8080/hello)" != "200" ]]; do sleep .00001; done

end=`python -c 'import time; print(repr(time.time()))'`

result=`python -c "print($end - $start)"`

echo "Quarkus started up in $result"
