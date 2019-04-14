amount_of_sales = 4000
variable_cost = 2000
fixed_cost = 800

variable_cost_ratio = variable_cost / amount_of_sales

bep = fixed_cost / (1 - variable_cost_ratio)

print('売上高：' + str(amount_of_sales) + '百万円')
print('変動費：' + str(variable_cost) + '百万円')
print('固定費：' + str(fixed_cost) + '百万円')
print('変動比率：' + str(variable_cost_ratio) + '百万円')
print('損益分岐点：' + str(bep) + '百万円')