init:
	go mod init algdatstr
	go mod tidy

test:
	go test -v ./...

bench:
	cd power; go test -bench=. | tee ../bench-power.lst

clean:
	find . -name *~ -exec rm {} \;
	find . -name *.lst -exec rm {} \;
	find . -name .DS_Store -exec rm {} \;


