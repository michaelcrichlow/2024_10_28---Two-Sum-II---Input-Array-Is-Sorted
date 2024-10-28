package test

import "core:fmt"
print :: fmt.println


main :: proc() {

	val_00 := twoSum(numbers = []int{2, 7, 5, 15}, target = 9)
	assert(slice_compare(val_00, []int{1, 2}) == true)

	val_01 := twoSum(numbers = []int{2, 3, 4}, target = 6)
	assert(slice_compare(val_01, []int{1, 3}) == true)

	val_02 := twoSum(numbers = []int{-1, 0}, target = -1)
	assert(slice_compare(val_02, []int{1, 2}) == true)

	print("All tests passed!")

	free_all(context.temp_allocator)

}

twoSum :: proc(numbers: []int, target: int) -> []int {
	local_dict := make(map[int]int, allocator = context.temp_allocator)
	local_array := make([dynamic]int, allocator = context.temp_allocator)

	for val, i in numbers {
		if (target - val) not_in local_dict {
			local_dict[val] = i + 1
		} else if (target - val) in local_dict {
			append(&local_array, local_dict[target - val])
			append(&local_array, i + 1)
		}
	}

	return local_array[:]
}
