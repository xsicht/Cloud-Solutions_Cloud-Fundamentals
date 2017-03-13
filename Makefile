TARGET=documentation.pdf
LL=latexmk -pdf
CLEAN=latexmk -c

all: $(TARGET)
.PHONY : $(TARGET) clean all

$(TARGET): $(TARGET:%.pdf=%.tex)
	$(LL) $<

clean:
	$(CLEAN)
	rm literatur.aux
