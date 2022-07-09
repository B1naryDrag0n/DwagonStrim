##########################################################
#################### DWAGON FUNCTIONS ####################
##########################################################

# ROMhack Roulette Tools

function make-json() {
    jq --raw-input . | jq --slurp .
}

function rm-dirs() {
    perl -pe 's,.*/,,'
}

function rm-smc() {
    perl -pe 's,\.smc$,,i'
}

function ls-hacks() {
    find -name "*.smc" | rm-dirs | rm-smc | make-json
}

##########################################################