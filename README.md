# docker-golinter

## Build

```
docker build -t cl3m3nt/golinter .
```

## Run

```
docker run --rm -v $PWD/src/:/root/files cl3m3nt/golinter /root/files/utils
/root/files/utils/apperrors.go:11:6: exported type AppError should have comment or be unexported
/root/files/utils/apperrors.go:12:2: struct field Id should be ID
/root/files/utils/apperrors.go:15:2: struct field RequestId should be RequestID
```s

## help

```
Usage of golint:
	golint [flags] # runs on package in current directory
	golint [flags] package
	golint [flags] directory
	golint [flags] files... # must be a single package
Flags:
  -min_confidence float
    	minimum confidence of a problem to print it (default 0.8)
  -set_exit_status
    	set exit status to 1 if any issues are found
```
