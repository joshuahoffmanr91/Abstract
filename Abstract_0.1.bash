#!/bin/bash

Compress () {

shopt -s extglob
N="$(cat $1) "
N="${N//$'\n'/\ $'\n'\ }"
S_=(${N[@]})
declare -g A_=(${S_[@]//?()/\\})
eval eval declare -Ag B_[\\\${A_[{0..${#A_[@]}}]}-]+=\"\\\ $\[A++\]\"
D_=(${!B_[@]})
eval eval declare -ag C_[\\\${#D_[{0..${#D_[@]}}]}]+=\"\\\ \\\${D_[B++]}\"
E_=(${C_[@]})
eval eval declare -g F_[C++]=\\\${E_[{${#E_[@]}..0}]}

        for b in ${F_[@]%-}; do

                for c in ${B_[$b-]}; do
                echo $b
                ! [[ " ${H_[@]} " == *" ${A_[A--]} "* ]] && H_+=("${A_[A+1]}")
                [[ -z $e ]] && eval {d,e}=\$c && continue
                N="${N/" $b "/\ $[c-d]\ }"
                d=$c
                done

        N="${N/" $b "/\ 0$e\ }"
        unset d e
        done

eval echo ${H_[@]} > $1.test
cat <<<"$N" >> $1.test

}


Decompress () {

Stand="$(cat $@)"
mapfile Jump < "$@"
Slip=(${Jump[0]})
Skip=(${Jump[@]:1:${#Jump[@]}})

        for (( Road=0; ${#Skip[@]} >= Road; Road++  )); do
        [[ ${Skip[Road]::0} == 0 ]] || continue && ((A++)) &&\
        [[  ${Skip[Road]/-} == $Road ]] && Leap[Road]=${Slip[-A+1]} &&\
        continue || Path=${Skip[Road]/-}

                until (( Walk == Road )); do
                Path=${Skip[$((Walk+=Path))]/-}
                Leap[Walk]=${Slip[-A+1]}
                done

        unset Path Walk
        done

Stand="${Jump[@]:1}"
eval Runs="\"${Stand//+([0-9|-])/\$\{Leap\[\$\(\(Z++\)\)\]\}}\""
cat <<<"$Runs" >> $1

}

Forward () {

shopt -s extglob

        Reverse () {

        shift 1
        Down=($@)
        Up=({000..256})
        declare -A Flip[${Up[X--]}]=\\b\\u{{0..9},{a..f}}{{0..9},{a..f}}

                until (( ${#Down}/3 == A++ )); do
                Slide+=\ ${Flip[${Down:$[A*3]:3}]}
                done

        #eval eval echo -e \\\${Flip[\\\${Down:{0..${#Down}..3}:3}]}

        }

[[ $1 = F ]] && Reverse $@ && exit ${#Flip[@]}
Up=({000..256})
declare -g In=($(od -An -h <<<${@:2})) Out

        for (( A=0; A+2 <= ${#In[@]}; ++A )); do
        eval Out+=\(\$\{In[A]:{2,:\ -2}\}\)
        done

declare -A Down[{{0..9},{a..f}}{{0..9},{a..f}}]=${Up[Z--]}

        until (( $B == ${#Out[@]}  )); do
        Side+=${Down[${Out[$((B++))]}]}
        done

echo -e "${Side}"

}

Inflation () {

shopt -s extglob
Crop=(${2//?()/\ })
eval declare -i C+=\({\${#{1,2}}\ ,\$[\${{1,2}//?\(\)/+}]\ }\)

        Dust () {

        eval eval C[\\\${C[{0..9}]::{${#C[Y++]}..0}}]+=\+$[++C%10]
        eval eval Till=\( \{\$[++C%2]..\${#Crop[@]}..{2,\${C[{0..4}]:=2}}\} \)
        eval eval Crop[\\\${Till[{0..${#Till[@]}}%${#Crop[@]}]}]+=\${Crop[X++%${#Crop[@]}]}
        Crop=(${Crop[@]//?()/\ })

        }

Dust

        while [[ ${#Crop[@]} -le $1 ]]; do
        declare -i C[++C%10]=${C[C%10]/%/+1}

                for Grow in ${Crop[@]##+(0)}; do
                Soil=$(( ${C[0]}${Crop[@]/#/+}${C[1]} ))
                Seed=$(( ${#Crop[@]}*10/Grow ))
                (( A=--A%${#Crop[@]} > Soil )) && break
                Bark=${Soil:$[E=${#Soil}/Grow]+$[++C%4]}
                Leaf=${Leaf##+(0)}${Soil::$[E+$[C%3]]}
                Crop[Seed+A--]=$((${Leaf/#/+}0${Bark##+(0)}))
                done

        (( ++C%25 )) && Dust && continue
        (( ++C%5 )) && Crop+=(${Crop[@]//-})
        Crop=(${Crop[@]//?()/\ })
        done

cat <<<${Crop[@]//-}

}

Abstract () {

mapfile Levels < $1
Creates="${Levels[@]:1}"
Levels[0]=$(Forward 0 ${Levels[0]})

        Password () {

                read -sp "Password: " Pass
                tr -dc '[:digit:]' <<<`od -An -td1 <<<$Pass`

        }

Imagine="$(Inflation ${#Creates} ${Levels})"
Motivate=(${Levels//?()/\ } \| ${Creates//?()/\ } \-)
echo ${Motivate[@]} > $1.Plan

        for Change in Imagine Creates; do
        [[ Inspire ]] && declare -l Inspire Mindful=($(Inflation $((${#Creates}+${#Levels})) $(Password)))
        Builder=(${!Change})

                while (( ${#Builder[@]} == 0 )); do
                X=${Builder[++A]}
                Y=${Mindful[-${A}]}
                declare -gi Inspire[A]=$(( X<Y ? Y-X:X-Y ))
                Builder=(${Builder[@]:1})
                Mindful[-${A}]=X
                done

        Creates="$(Inflation ${#Levels} ${Inspire[@]})"
        done

}


Compress $@
Abstract $1.test
