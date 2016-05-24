DIR_PATH=${1}

function generate_module_pom {
    dirs=`ls ${1}`
    
    for dir in ${dirs}; do
        if [ -f "${DIR_PATH}/${dir}" ]; then
            continue
        fi
        ### bug is here!!!!!!
        DIR_PATH=${DIR_PATH}/${dir}
        generate_one_dir ${DIR_PATH}
        generate_module_pom ${DIR_PATH}
    done 
}

## one parameter represent directory path
function generate_one_dir {
    dir_path=${1}
    if [ -f "${dir_path}/test.txt" ]; then
        echo $PWD
    fi
}

generate_module_pom ${DIR_PATH}
