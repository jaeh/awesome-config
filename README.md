awesome_wm_config
=================

my awesome config, working on fedora 20

first clone this repository into your .config/ dir:

    git clone https://github.com/jaeh/awesome-config ~/.config/awesome/

copy files into the right dirs and initiate git submodules:

    cp ~/.config/awesome/themes/font/PIXELADE.TTF ~/.fonts/ && \
    fc-cache && \
    chmod +x ~/.config/awesome/run_once.sh && \
    git submodule init && git submodule update

command + ctrl + r to reload awesome.

you will need to adjust some settings of the widgets,
those will one day be moved into a separate config file.
