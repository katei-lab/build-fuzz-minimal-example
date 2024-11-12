OUTDIR = out

all: $(OUTDIR) $(OUTDIR)/main

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(OUTDIR)/main: $(OUTDIR)/main.o
	$(CC) -o $@ $^

$(OUTDIR)/main.o: main.c
	$(CC) -c -o $@ $^

clean:
	rm -f $(OUTDIR)/*.o $(OUTDIR)/main

.PHONY: all clean
