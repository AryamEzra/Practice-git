n = int(input())
# n groups of people
# each group has 1 - 4 members
# each group needs to go in the same taxi

groups = list(map(int, input().split()))

# if a group has 4 members they get one taxi
count = groups.count(4)

#if a group has 3 memebers they get one taxi
count += groups.count(3)

# 2 group with 2 members get one taxi and 3 groups with 2 members each then on the second taxi we fill from the number of single people
# the second part calculates the number of groups of size 1 that cannot be paired with another group of size 1 or with a group of size 3. This value is then clamped to a minimum of 0 since we can’t have negative taxis.
# then we add 3 to account for the group which had 4 memebers then divide by 4 
count += (groups.count(2) * 2 + max(groups.count(1) - groups.count(3), 0) + 3) // 4

print(count)