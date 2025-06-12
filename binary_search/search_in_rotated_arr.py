class Solution:
    def search(self, nums, target: int) -> int:
        start = 0
        end = len(nums) - 1
        minimum = self.findMin(nums)

        n1 = self.binary_search(nums, start, minimum - 1,target)
        n2 = self.binary_search(nums, minimum, end,target)

        return max(n1,n2)
    
    def binary_search(self,nums,start, end,target):
        while start <= end:
            mid = start + ((end - start) // 2)

            if nums[mid] == target:
                return mid
            
            elif nums[mid] < target:
                start = mid + 1
            
            else:
                end = mid - 1

        return -1

    def findMin(self, nums) -> int:
        start = 0
        N = len(nums)
        end = N - 1

        while start < end:
            mid = (start + end )// 2

            if nums[start] <= nums[end]:
                return start

            if nums[mid] > nums[end]:
                start = mid + 1
            else:
                end = mid
        
        return start

            
s = Solution()
print(s.findMin(nums=[4,5,6,7,0,1,2]))