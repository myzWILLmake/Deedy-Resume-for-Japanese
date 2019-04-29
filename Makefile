CC = xelatex
JAPANESE_DIR = OpenFonts.Japanese
CHINESE_DIR = OpenFonts.Chinese
ENGLISH_DIR = OpenFonts
OUTPUT_DIR = docs

NAME = resume

all: $(NAME).pdf clean

$(NAME).pdf:
	bash scripts/build.sh
clean:
	-@rm -f $(CHINESE_DIR)/*.xdv $(CHINESE_DIR)/*.aux $(CHINESE_DIR)/*.out $(CHINESE_DIR)/*.fdb_latexmk $(CHINESE_DIR)/*.log $(CHINESE_DIR)/*.fls $(ENGLISH_DIR)/*.xdv $(ENGLISH_DIR)/*.aux $(ENGLISH_DIR)/*.out $(ENGLISH_DIR)/*.fdb_latexmk $(ENGLISH_DIR)/*.log $(ENGLISH_DIR)/*.fls $(JAPANESE_DIR)/*.xdv $(JAPANESE_DIR)/*.aux $(JAPANESE_DIR)/*.out $(JAPANESE_DIR)/*.fdb_latexmk $(JAPANESE_DIR)/*.log $(JAPANESE_DIR)/*.fls 2> /dev/null || true