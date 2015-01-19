con () {
    echo "Activating anaconda"
    source $HOME/anaconda/bin/activate ${1:-root}
}

coff () {
    echo "Deactivating miniconda"
    typeset -a _path
    typeset _p
    for _p in $path
    do
        if [[ $_p != $HOME/anaconda/* ]]
        then
            _path+=$_p
        fi
    done
    path=($_path)
    unset CONDA_DEFAULT_ENV
}
