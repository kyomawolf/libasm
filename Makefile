NAME=libasm.a
FILES=ft_strlen.asm ft_write.asm
VPATH=
OBJ_FOLDER=obj/
OBJ=$(addprefix $(OBJ_FOLDER), $(patsubst %.asm, %.o, $(FILES)))
all: $(NAME)

$(OBJ_FOLDER)%.o: %.asm
	nasm -f elf64 $< -o $@

$(NAME): $(OBJ_FOLDER) $(OBJ)
	ar rcs $(NAME) $(OBJ)
# ld -m elf_i386 $(OBJ) -o $(NAME)

$(OBJ_FOLDER):
	mkdir $@

clean:
	- rm -rf $(OBJ_FOLDER)*.o

fclean: clean
	- rm $(NAME)
	- rm -rf $(OBJ_FOLDER)