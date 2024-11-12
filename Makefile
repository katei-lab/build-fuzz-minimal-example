OUTDIR = out

all: $(OUTDIR) $(OUTDIR)/main

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(OUTDIR)/main: $(OUTDIR)/main.o $(OUTDIR)/foo.o
	$(CC) -o $@ $^

$(OUTDIR)/%.o: %.c
	$(CC) -c -o $@ $^

clean:
	rm -f $(OUTDIR)/*.o $(OUTDIR)/main

.PHONY: all clean
