microservice:
	GOOS=linux CGO_ENABLED=0 go build -gcflags "-N -l" -o microservice
	docker build -t shubhim/example:0.1 .
dist:
	docker push shubhim/example:0.1

clean:
	rm microservice

run:
	make clean && make microservice && make dist
