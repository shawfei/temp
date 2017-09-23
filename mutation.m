% Mutation algorithm
for i=1:pop_size
            if rand < mutate_rate/*mutate_rate为变异概率*/
                mutate_pos = round(rand*chromo_size);/*变异位置*/
                if mutate_pos == 0
                    continue;/*若变异位置为0，则不进行变异*/
                end if
                pop(i,mutate_pos) = 1 - pop(i, mutate_pos);/*将变异位置上的数字至反*/
            end if
end for