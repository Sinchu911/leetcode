class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        length = max(candies)
        l = []
        for i in candies:
            if i + extraCandies >= length:
                l.append(True)
            else:
                l.append(False)
        return l
      