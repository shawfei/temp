function run_ga()
elitism = true;%选择精英操作
pop_size = 20;%种群大小
chromo_size = 16;%染色体大小
generation_size = 200;%迭代次数
cross_rate = 0.6;%交叉概率
mutate_rate = 0.01;%变异概率

[m,n,p,q] = GeneticAlgorithm(pop_size, chromo_size, generation_size, cross_rate, mutate_rate,elitism);
disp "最优个体"
m
disp "最优适应度"
n
disp "最优个体对应自变量值"
q
disp "得到最优结果的代数"
p

clear;