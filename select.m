% Selection Algorithm
var pop, pop_new;/*pop为前代种群，pop_new为下一代种群*/
var fitness_value, fitness_table;/*fitness_value为种群的适应度，fitness_table为种群累积适应度*/
for i=1:pop_size
    r = rand*fitness_table(pop_size);/*随机生成一个随机数，在0和总适应度之间，因为fitness_table(pop_size)为最后一个个体的累积适应度，即为总适应度*/
        first = 1;
            last = pop_size;
            mid = round((last+first)/2);
            idx = -1;
        /*下面按照排中法选择个体*/
            while (first <= last) && (idx == -1) 
                if r > fitness_table(mid)
                    first = mid;
                elseif r < fitness_table(mid)
                    last = mid;     
                else
                    idx = mid;
                    break;
                end if
                mid = round((last+first)/2);
                if (last - first) == 1
                    idx = last;
                    break;
                end if
           end while
   
           for j=1:chromo_size
                pop_new(i,j)=pop(idx,j);
           end for
end for
/*是否精英选择*/
if elitism
        p = pop_size-1;
else
        p = pop_size;
end if
for i=1:p
       for j=1:chromo_size
            pop(i,j) = pop_new(i,j);/*若是精英选择，则只将pop_new前pop_size-1个个体赋给pop，最后一个为前代最优个体保留*/
       end for
end for