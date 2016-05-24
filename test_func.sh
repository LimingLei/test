#!/bin/sh

foo() {
    x="echo -ne \033]0; "
    x=$x$1"\007"
    echo $x
    eval $x
    PROMPT_COMMAND=$y
}

