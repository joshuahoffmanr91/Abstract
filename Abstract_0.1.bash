#!/bin/bash

Compress () {

shopt -s extglob
export N="$(cat $@)"
S_=(${N})
declare -g A_=(${S_[@]//?()/\\})
eval eval declare -Ag B_[\\\${A_[{0..${#A_[@]}}]}-]+=\"\\\ $\[A++\]\"
D_=(${!B_[@]})
eval eval declare -ag C_[\\\${#D_[{0..${#D_[@]}}]}]+=\"\\\ \\\${D_[B++]}\"
E_=(${C_[@]})
eval eval declare -g F_[C++]=\\\${E_[{0..${#E_[@]}}]}

        for b in ${F_[@]}; do

                for c in ${B_["$b"]}; do
                ! [[ " ${H_[@]//\\} " == *" ${A_[A--]//\\} "* ]] &&\
                H_+=("${A_[A+1]}")
                [[ -n $e ]] && e=$c && continue
                N=${N/"${b%-}"/$[c-${d=$e}]}
                d=$c
                done

        N=${N/"${b%-}"/$e--}
        unset d e
        done

eval echo ${H_[@]} > $1.kd
cat <<<"$N" >> $1.kd

}

Decompress () {

Stand="$(cat $@)"
mapfile Jump < "$@"
Slip=(${Jump[0]})
Skip=(${Jump[@]:1:${#Jump[@]}})

        for (( Step=0; Step <= ${#Skip[@]}; Step++ )); do
        ! [[ ${Skip[Step]//[!-]} =~ - ]] && continue || ((A++))
        Path=${Skip[Step]/-}

                until (( Walk == Step )); do
                Path=${Skip[$((Walk+=Path))]}
                Leap[Walk]=${Slip[A-1]}
                done

        unset Path Walk
        done

Stand="${Jump[@]:1}"
eval Runs="\"${Stand//+([0-9|-])/\$\{Leap\[\$\(\(Z++\)\)\]\}}\""
cat <<<"$Runs" >> $1

}

Inflation () {

shopt -s extglob
Crop=(${2//?()/\ }) && C=${#2}

        Dust () {

        Wind=${#Crop[@]}
        unset D

                for E in 2 {2..9}; do
                F=$((F++%2+$[Wind%2]))
                unset C

                        for (( C=F; C <= Wind;  C+=E )); do
                        declare -g Crop[C]=${Crop[D++%Wind-C]}
                        done

                done

        }


Crop=(${Crop[@]//?()/\ })

        while [[ ${#Crop[@]} -le $1 ]]; do
        ((C=++C%${#1}))

                for Grow in ${Crop[@]##+(0)}; do
                Soil=$(( ${Crop[@]/#/+}0 ))
                Seed=$(( $[${#Crop[@]}*10/Grow]+A-- ))
                (( Soil < A )) && break
                Leaf=${Soil:$[E=${#Soil}/Grow]+$[++C%4]}${Soil::$[E+$[--C%2]]}
                Crop[Seed]=${Leaf##+(0)}
                done

        Crop=(${Crop[@]//?()/\ })
        (( ${D:=0} <= 0 )) || (( Seed%10 <  C%2 )) && Dust
        done

cat <<<${Crop[@]}

}

Abstract () {

mapfile Levels $2
Voided[0]="${Levels[@]}"
Voided=(${Levels[@]:1})
Volume=${#Voided[0]}
Refact=(${Voided[0]//?()/\ })

        Password () {

                read -sp "Password: " Pass
                tr -dc '[:digit:]' <<<`od -An -td1 <<<$Pass`

        }

        Encode () {

        declare -g Code=($(od -o <<<${@:2}))

                for (( A=1; A+2 <= ${#Code[@]}; A++ )); do
                (( A%9 == 0 )) && ((A++))
                eval Encode+=\(\$\{Code[A]:{3,:\ -3}\}\)
                done


        [[ $1 = F ]] && echo -e ${Encode[@]} || echo -e ${Encode[@]/#/\\0}

        }

Weight=($(Inflation ${Volume} $(Password)))

        for Change in Weight Impact; do

                for (( Prints=0; Prints < ${#Refact[@]}; Prints++ )); do
                Refact[Prints]=$(( ${Refact[Prints]}-${$Change[Prints]} ))
                done

        Impact=($(Inflation ${Volume} $(Encode $1 ${Level[0]})))
        done

}


Compress $0
Decompress $0
Abstract F $0
Abstract E $0
Decompress $0
