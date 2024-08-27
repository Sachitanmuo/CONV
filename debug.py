def helper(file_paths, n):
    nums = []
    for file_path in file_paths:
        with open(file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()
            nums.append(lines[n].strip()[0:8])
    return nums

file_paths = ['./input_cgroup0h_0w_0.txt', './input_cgroup0h_0w_1.txt', './input_cgroup0h_1w_0.txt', './input_cgroup0h_1w_1.txt']
while(True):
    m = int(input("row = "))
    n = int(input("column = "))
    nums = helper(file_paths, m*56 + n)
    print(f" {nums[0]} | {nums[1]}")
    print("---------------------")
    print(f" {nums[2]} | {nums[3]}")
