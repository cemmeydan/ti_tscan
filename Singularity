#######################################################################################
## DO NOT EDIT THIS FILE! This file was automatically generated from the dockerfile. ##
## Run babelwhale::convert_dockerfile_to_singularityrecipe() to update this file.    ##
#######################################################################################

Bootstrap: shub

From: dynverse/dynwrap:bioc

%labels
    version 0.1.5

%setup
    mkdir /scratchLocal
    mkdir /pbtech_mounts
    mkdir /pbtech_mounts/softlib001
    mkdir /athena
    mkdir /zenodotus

%files

    . /code

%post
    chmod -R 755 '/code'
    R -e 'devtools::install_cran("TSCAN")'

%runscript
    exec Rscript /code/run.R

