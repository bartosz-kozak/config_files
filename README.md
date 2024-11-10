# Pliki konfiguracyjne bash i vim

## vimrc

### Instalacja

Przed instalacją pluginów należy zainstalować vim w wersji 8+ z pythonem:

```bash
sudo apt-get install vim vim-gtk -y
```

Kopiujemy repozytorium z plikami konfiguracyjnymi, a następnie kopiujemy te pliki do katalogu domowego:

```bash
git clone https://github.com/bartosz-kozak/config_files.git ~/
cd ~/config_files && cp .bashrc .vimrc ~/ 
```

Następnie instalujemy Vundle plugin:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Pozostałe pluginy instalujemy przez polecenie `:PluginInstall` uruchomiane w vime

Po prawidłowej instalacji pluginów compilujemy YouCompleteMe. W tym celu wpisujemy w konsoli:

```bash
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py
```

Kolejnym krokiem jest instalacja zależności dla **vim-markdown**. Dla zainstalowania potrzebnych pakietów wpisujemy:
```
sudo apt install xdg-utils nodejs curl npm -y
sudo npm -g install instant-markdown-d
```
