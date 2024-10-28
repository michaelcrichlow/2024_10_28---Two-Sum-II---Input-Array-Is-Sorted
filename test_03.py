def twoSum(numbers: list[int], target: int) -> list[int]:
    local_dict = dict()
    local_array: list[int] = []

    for i, val in enumerate(numbers):
        if (target - val) not in local_dict:
            local_dict[val] = i + 1
        elif (target - val) in local_dict:
            local_array.append(local_dict[target - val])
            local_array.append(i + 1)

    return local_array


def main() -> None:
    assert (twoSum(numbers=[2, 7, 11, 15], target=9) == [1, 2])
    assert (twoSum(numbers=[2, 3, 4], target=6) == [1, 3])
    assert (twoSum(numbers=[-1, 0], target=-1) == [1, 2])
    print("All tests passed!")


if __name__ == '__main__':
    main()
