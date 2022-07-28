#!/bin/bash

Compress () {

shopt -s extglob
N=" $(cat $1) "
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
		! [[ " ${H_[@]} " == *" ${A_[--A-1]} "* ]] && H_+=("${A_[A-1]}")
		[[ -z $e ]] && eval {d,e}=\$c && continue 
		N="${N/" $b "/\ $[c-d]\ }"
		d=$c
		done

	N="${N/" $b "/\ 0$e\ }"
	unset d e
	done

eval echo ${H_[@]} > $1.sf
cat <<<"$N" >> $1.sf

}


Decompress () {

Stand="$(cat $@)"
mapfile Jump < "$@"
Slip=(${Jump[0]}) 
Skip=(${Jump[@]:1:${#Jump[@]}})
	
	for (( Road=0; ${#Skip[@]} >= Road; Road++ )); do
	[[ ${Skip[Road]::1} == 0 ]] || continue && ((A++)) &&\
	[[  ${Skip[Road]#0} == $Road ]] && Leap[Road]=${Slip[-A+1]} &&\
	continue || Path=${Skip[Road]#0}

		until (( ${Walk:=0} == $Road )); do
		Path=${Skip[$((Walk+=Path))]/-}
		Leap[Walk]=${Slip[-A+1]}
		done

	unset Path Walk
	done

Stand="${Jump[@]:1}"
eval Runs="\"${Stand//+([0-9|-])/\$\{Leap\[\$\(\(Z++\)\)\]\}}\""
cat <<<"$Runs" >> ${1%%.*}_$(date +'%s').${1#*.}

}

Abstract () {

#Use Imagination and Mindfullness to create something to lift your motivation. 
#When your spirits are high build to Create something for that speaks volumes.
#Crafted to inspire change you motivation will carry you to the highest level.



	Encode () {
	
	unset {A..Z}{_,} {a..z}
	a="$(cat <<<${@:2})"
	eval A_+=(\$\'\\\\\\{1,0}{0..7}{0..7}\')
	B_=(${A_[@]//[\\|\*|[:cntrl:]]/})
	eval declare -A C_[\${B_[D++]/#/\\\\}]={00..95}
	eval C_[{95..00}]=${B_[$((--D))]/#/\\}
	C_+=([$'\t']=96 [$'\n']=99 [' ']=98 [\*]=97 [99]=$'\n' [97]=\* [98]=' ' [96]=$'\t')
	[[ $1 = F ]] && X=1	
	
		for (( A=0; A <= ${#a}; A=A+${X:=2} )); do
		echo -n "${C_["${a:$A:${X:=2}}"]}"
		done
	
	}
	
	Inflation () {
	
	Rain=$1
	shopt -s extglob
	declare -g Crop=(${2//?()/\ })
	eval declare -i C+=\({\${#{1,2}}\ ,\$[\${{1,2}//?\(\)/+}]\ }\)

		Dust () {
		
                eval eval C[++Y%10]+=\\\${C[{0..4}]:{${#C[Y++]}..0}:1}
                eval eval Till=\( \{\$[++C%2]..\${\#Crop[@]}..{2,\${C[{0..4}]:=2}}\} \)
                eval eval Crop[\\\${Till[{0..${#Till[@]}}%${#Crop[@]}]}]+=\${Crop[X++%${#Crop[@]}]}	
                Crop=(${Crop[@]//?()/\ })

                }
		
	Dust

		while [[ ${#Crop[@]} -le $1 ]]; do
		((C+=${C[C++%3+1]}%10))

                        for Grow in ${Crop[@]/0/1}; do
			((Soil+=${Soil}${Crop[@]//?()/+}))
			((Seed=${#Crop[@]}*$[Seed%10+1]/10))
			Root=${Soil:$[E=${#Soil}*$[Soil%10+1]/10]}
			Leaf=${Soil::$[E-$[Soil%5==4]]}${Root}
			Crop[$Seed]+=$((${Leaf//?()/+}0))
			(( $Soil < 0 )) && break
                        done
		
                Crop=(${Crop[@]//?()/\ })
                (( ++C%25 )) && Dust || (( ++C%5 )) && Crop+=(${Crop[@]})
		Crop=(${Crop[@]:-${A}})
                done

        eval echo \${Crop[@]::$1}

	}

shopt -s extglob
mapfile Leveled < $1.sf
declare -lr Heights=(
[0]="${Leveled[@]}" 
[1]="${Leveled[@]:1}" 
[2]=$(Encode F ${Leveled[0]}) )
declare Linked=(
[0]=$(Inflation $((${#Heights[2]}+${#Heights[1]})) $(read -sp "In: " P; Encode F $P && unset P ))
[${#Heights[1]}]="${Heights[1]}"
[${#Heights[2]}]="${Heights[2]}")

	for Change in ${!Linked[@]}; do
	Builder+=(${Linked[$Change]//+()/\ })
	((A=Change))

		until (( A == 0 )); do
		X=${Builder[++A]} && Y=${Mindful[--B]}
		Inspire[A]=$(( X>Y ? X-Y:Y-X ))
		Mindful[B]=${Inspire[A]}
		done
	
	
	((B=B*-1 == Change )) || Mindful+=(${Builder[@]})
	done

}


Compress $@
Decompress $@.sf
Abstract $@


#Testing=(${Inspire[@]} ${Crafted[@]})
#read -p "${FUNCNAME[@]}" In
#echo ${Inspire[@]}
##Compress () {
##
##shopt -s extglob
##N="$(cat $1) "
##N="${N//$'\n'/\ $'\n'\ }"
##S_=(${N[@]})
##declare -g A_=(${S_[@]//?()/\\})
##eval eval declare -Ag B_[\\\${A_[{0..${#A_[@]}}]}-]+=\"\\\ $\[A++\]\"
##D_=(${!B_[@]})
##eval eval declare -ag C_[\\\${#D_[{0..${#D_[@]}}]}]+=\"\\\ \\\${D_[B++]}\"
##E_=(${C_[@]})
##eval eval declare -g F_[C++]=\\\${E_[{${#E_[@]}..0}]}
##
##	for b in ${F_[@]%-}; do
##
##		for c in ${B_[$b-]}; do
##		! [[ " ${H_[@]} " == *" ${A_[A--]} "* ]] && H_+=("${A_[A+1]}")
##		[[ -z $e ]] && eval {d,e}=\$c && continue 
##		N="${N/" $b "/\ $[c-d]\ }"
##		d=$c
##		done
##
##	N="${N/" $b "/\ 0$e\ }"
##	unset d e
##	done
##
##eval echo ${H_[@]} > $1.test
##cat <<<"$N" >> $1.test
##
##}
##
##
##Decompress () {
##
##Stand="$(cat $@)"
##mapfile Jump < "$@"
##Slip=(${Jump[0]}) 
##Skip=(${Jump[@]:1:${#Jump[@]}})
##	
##	for (( Road=0; ${#Skip[@]} >= Road; Road++ )); do
##	[[ ${Skip[Road]::0} == 0 ]] || continue && ((A++)) &&\
##	[[  ${Skip[Road]/-} == $Road ]] && Leap[Road]=${Slip[-A+1]} &&\
##	continue || Path=${Skip[Road]/-}
##
##		until (( Walk == Road )); do
##		Path=${Skip[$((Walk+=Path))]/-}
##		Leap[Walk]=${Slip[-A+1]}
##		done
##
##	unset Path Walk
##	done
##
##Stand="${Jump[@]:1}"
##eval Runs="\"${Stand//+([0-9|-])/\$\{Leap\[\$\(\(Z++\)\)\]\}}\""
##cat <<<"$Runs" >> $1
##
##}
#
#
#
##echo "
##Source: ${#Motivate[@]}
##Counts: $(wc -c <<<${Levels[@]})
##System: $A
##Memory: ${#Inspire[@]}
##"
#		#((A++))
#		#[[ ${#Inspire[@]} == ${Motivate[@]} ]] &&\
#		#((B++)) &&\
#
#
#		#X=${Builder[A]} && Y=${Motivate[A]} &&\
#		#Inspire[A]=$(( X<Y ? Y-X:X-Y )) 
#		#Mindful[-${A}]=0
#		#Builder=(${Builder[@]:1})
##Test_Input=({A..Z})
##Test_Range=999
##Inflation $Test_Range $(Forward 0 ${Test_Input[@]}) | tee >(wc -clw)
##read -p ""
#
###	Dust () {
##
##	Wind=${#Crop[@]}
##	unset D
##
##		for E in 2 {2..9}; do
##		F=$((F++%2+$[Wind%2]))
##		unset C
##
##			for (( C=F; C <= Wind;  C+=E )); do
##			declare -g Crop[C]=${Crop[D++%Wind]}
##			done
##
##		done
##
##	}
##!/bin/bash
#
###Inflation () {
##
##shopt -s extglob
##Crop=(${@//?()/\ })
##eval C=\$[\${{1..2}/#/+}\${#{2..1}}]
##
##	while [[ ${#Crop[@]} -le $1 ]]; do
##	eval Sows=(2 $(({8,C,Crop,${#Crop[@]}}%10)))
##	eval eval Crop=\(\\\${Crop[{{0,1}..${#Crop[@]}..${Sows[{0..5}}]}]}\)
##
##		for Grow in ${Crop[@]##+(0)}; do
##		Soil=$(( ${Crop[@]/#/+}0 ))
##		Seed=$(( $[${#Crop[@]}*10/Grow]+A-- ))
##		(( Soil < A )) && break
##		Leaf=${Soil:$[E=${#Soil}/Grow]+$[++C%4]}${Soil::$[E+$[A%2]]}
##		Crop[Seed]=${Leaf##+(0)}
##		done
##
##	Crop=(${Crop[@]//?()/\ })
##	done
##
##cat <<<${Crop[@]}
##
##}
##!/bin/bash
#
#
##$Inflation () {
##
##shopt -s extglob
##declare -g Crop=(${2//?()/\ })
##eval declare -i C+=\({\${#{1,2}}\ ,\$[\${{1,2}//?\(\)/+}]\ }\)
##
##                Dust () {
##
##                eval eval C[\\\${C[{0..4}]:{${#C[Y++]}..0}:1}]+=\+$[Y%10]
##                eval eval Till=\( \{\$[++C%2]..\${#Crop[@]}..{2,\${C[{0..4}]:=2}}\} \)
##                eval eval Crop[\\\${Till[{0..${#Till[@]}}%${#Crop[@]}]}]+=\${Crop[X++%${#Crop[@]}]}
##                Crop=(${Crop[@]//?()/\ })
##
##                }
##
##        Dust
##
##                while [[ ${#Crop[@]} -le $1 ]]; do
##		((C+=${C[C++%3+1]}%10))
##
##                        for Grow in ${Crop[@]/0/1}; do
##			((Soil+=$Grow ${Crop[@]//?()/+}))
##			((Seed=${#Crop[@]}*$[Seed%10+1]/10))
##			Root=${Soil:$[E=${#Soil}*$[Soil%10+1]/10]}
##			Leaf=${Soil::$[E-$[Soil%5==4]]}${Root}
##			Crop[$Seed]+=$((${Leaf//?()/+}0))
##			(( $Soil < 0 )) && break
##                        done
##
##                (( ++C%25 )) && Dust || (( ++C%5 )) && Crop+=(${Crop[@]})
##                Crop=(${Crop[@]//?()/\ })
##                done
##
##        eval echo \${Crop[@]:$1}
##
##}
##
##Inflation $@
##
##!/bin/bash
#
#
#
#
#
#
#Compress $@
#Decompress $@.test
#cat $1.test
        #unset {_,}{A..Z} {a..z}
        #eval A_+=(\$\'\\\\\\{1,0}{0..7}{0..7}\')
        #B_=(${A_[@]//+(\'\\[![:print:]]\')})
        #declare -Ag C_[\${B_[D++]//[[:cntrl:]]/}]={00..95}
        #C_+=(['\\$'\n'']=96 ['\$'\t'']=97 ['\ ']=98)
        #In="$(cat $@)" 

        #        for (( Z=0; Z <= ${#In}; Z++ )); do
	#	Or=(\${C_[\'\\${In:$Z:1}\']})
        #        done
