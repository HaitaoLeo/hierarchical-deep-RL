min=$1
max=$2
for  seed in 6050; do
     for subgoal in $(seq $min $max); do
        for usedistance in 'true'; do
                 temp="seed_${seed}_subgoal_${subgoal}_usedistance_${usedistance}"
                 ./run_exp.sh $temp $((seed + subgoal)) $subgoal $usedistance &
        done
    done
done

