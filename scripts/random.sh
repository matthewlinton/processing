#!/bin/bash
# random.sh - Generate Random BIN/DEC/HEX/CHAR/PUNC/SPEC
# There are multiple ways to generate random numbers. by default the simple method is used.
# Usage random.sh <type> [subtype]
# TYPE :
#       BIN         Binary nunmber (0-1)
#       DEC         Decimal number (0-9)
#       HEX         Hexidecimal number (0-F)
#       OCT         Octal number (0-8)
#       CHAR        Character (A-Z)
#       PUNC        Punctuation (!.,?;:)
#       SPEC        Special Charaters (@#$%^&*()_+=-{}[]|\`~)
#       TEST <fun>  Test the randomness of any of the above functions.
#
# SUBTYPES : 
#       SRANDOM      Generated from $RANDOM (Default)
#       RANDOM       Generated from /dev/random
#       URANDOM      Generated from /dev/urandom
#

## FUNCTION DEFINITIONS ####

function random_bin {
    case "$1" in
    RANDOM)
        echo 1
        ;;
    *)
        echo "$(($RANDOM % 2))"
        ;;
    esac
}

function random_dec {
    case "$1" in
    *)
        echo "$(($RANDOM % 10))"
        ;;
    esac
}

function random_hex {
    case "$1" in
    *)
        printf '%X' $(($RANDOM % 16))
        ;;
    esac
}

function random_oct {
    case "$1" in
    *)
        printf '%o' $(($RANDOM % 8))
        ;;
    esac
}

function random_char {
    case "$1" in
    *)
        printf '%c' $(($RANDOM % 128))
        ;;
    esac
}

function random_punc {
    case "$1" in
    *)
        echo "-1"
        ;;
    esac
}

function random_spec {
    case "$1" in
    *)
        echo "-1"
        ;;
    esac
}

function tast_function {
    case "$1" in
    *)
        echo "-1"
        ;;
    esac
}

## MAIN ####

TYPE="$(echo "$1" | tr '[:lower:]' '[:upper:]')"
SUBTYPE="$(echo "$2" | tr '[:lower:]' '[:upper:]')"

case "$TYPE" in
    BIN)
        random_bin "$SUBTYPE"
        ;;
    DEC)
        random_dec "$SUBTYPE"
        ;;
    OCT)
        random_oct "$SUBTYPE"
        ;;
    HEX)
        random_hex "$SUBTYPE"
        ;;
    CHAR)
        random_char "$SUBTYPE"
        ;;
    TEST)
        test_function $2
        ;;
    *)
        echo "Unrecognized type \"$1\"."
        exit 2
        ;;
esac

