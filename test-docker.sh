docker build -t dotfiles-test . && docker run -it --rm --name dotfiles-test -v .:/root/dotfiles dotfiles-test 
