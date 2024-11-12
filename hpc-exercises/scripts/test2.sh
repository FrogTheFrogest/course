#!/bin/bash
for i in {1..1000}; do echo 14019 >>randomNumbers.txt; done
sort -n randomNumbers.txt
