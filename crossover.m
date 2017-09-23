% Crossover algorithm
for i=1:2:pop_size
    if(rand < cross_rate) % cross_rate为交叉概率
        cross_pos = round(rand * chromo_size); % 交叉位置
        if or (cross_pos == 0, cross_pos == 1)
            continue; % 若交叉位置为0或1，则不进行交叉
        end if
        for j=cross_pos:chromo_size
            pop(i,j)<->pop(i+1,j); % 交换
        end for
    end if
end for