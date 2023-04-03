# /bin/zsh
make clean && make semant 
echo "coolc"
./coolc ./grading/redefinedobject.test > testtest.output
echo "*******************"
echo "mysemant"
./mysemant ./grading/redefinedobject.test> test.output 
echo "*******************"
echo "******diff*******"
diff ./test.output ./testtest.output

# compare done but output is different 
# inheritsselftype done
# signaturechange  done
# redefinedobject done but output is different
# selfinformalparameter done

# 懒得凹了
# simplecase done 
# hairyscary done
# list done
