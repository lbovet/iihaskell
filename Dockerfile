FROM gibiansky/ihaskell:latest
MAINTAINER laurent.bovet@windmaster.ch
COPY custom.js /usr/local/lib/python2.7/dist-packages/notebook/static/custom/custom.js
COPY rc.hs /root/.ihaskell/rc.hs 
