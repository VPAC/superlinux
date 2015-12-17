#!/bin/bash
for a in {1..99}
do
cat <<- EOF > job${a}
#!/bin/bash
#PBS -N ${a}
#PBS -j oe
#PBS -o err_log${a}
#PBS -l nodes=1:ppn=1
#echo $(pwd) >> results.txt
EOF
done
