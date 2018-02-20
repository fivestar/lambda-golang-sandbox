BIN=hello
ZIP=handler.zip

.PHONY: all
all: $(ZIP)

$(ZIP): $(BIN)
	zip $(ZIP) $(BIN)

$(BIN):
	GOOS=linux GOARCH=amd64 go build -o $(BIN)

.PHONY: clean
clean:
	$(RM) $(BIN) $(ZIP)
