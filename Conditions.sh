

if [1 -eq 1]
then
  echo hello
fi

#expressions are important
#1. string tests
# Operators: ==, !=, -Z
#2. Number Tests
#3. File Tests

a="abc"
if["$a"="abc"]; then
  echo Both are qual
  fi
  if["&a"!a"abc"]; then
    echo Both are not equal
    fi
if[-Z "$b"]; then
  echo b variable is empty
  fi