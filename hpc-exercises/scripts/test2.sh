for i in {1..1000}; do echo 772 >>randomNumbers.txt; donesort -n randomNumbers.txt
cat >test2.sh <<E0L
for i in {1..1000}; do echo 992 >>randomNumbers.txt; done
sort -n randomNumbers.txt
