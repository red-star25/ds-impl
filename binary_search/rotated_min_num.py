
def findMin(nums) -> int:
        N = len(nums)
        start = 0
        end = N - 1

        while start < end:
            mid = (start + end) // 2
            
            if nums[start] <= nums[end]:
                return nums[start]
            
            if nums[mid] > nums[end]:
                start = mid + 1
            else:
                end = mid
        
        return nums[start]