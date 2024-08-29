def helper(file_paths, n):
    nums = []
    for file_path in file_paths:
        with open(file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()
            nums.append(lines[n].strip()[0:8])
    return nums

def convolution(image, kernel):
    result = 0
    for i in range(len(image)):
        result += image[i] * kernel[i]
    return result

print("Select mode:")
print("1.input reading debug\n2.conv debug")
mode = int(input("-> "))

if mode == 1:
    file_paths = ['./input_cgroup0h_0w_0.txt', './input_cgroup0h_0w_1.txt', './input_cgroup0h_1w_0.txt', './input_cgroup0h_1w_1.txt']
    while True:
        m = int(input("row = "))
        n = int(input("column = "))
        nums = helper(file_paths, m * 56 + n)
        print(f" {nums[0]} | {nums[1]}")
        print("---------------------")
        print(f" {nums[2]} | {nums[3]}")

elif mode == 2:
    print("Please input 9 numbers for the image (3x3):")
    image = [int(input(f"Image[{i}] = ")) for i in range(9)]
    
    print("Please input 9 numbers for the kernel (3x3):")
    kernel = [int(input(f"Kernel[{i}] = ")) for i in range(9)]
    
    result = convolution(image, kernel)
    print(f"Convolution result: {result}")

else:
    print("Invalid mode selected.")
