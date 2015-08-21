#Project: Merge-Sort

#This will split the array into smaller pieces (arrays)
def merge_sort(array)
  return array if array.length == 1 #Base case
  mid = array.length / 2 #Splits the array into half
  left_side = array[0..mid-1] #Splits the original array into 2
  right_side = array[mid..-1] #Splits original into 2 separate arrays
  l = merge_sort(left_side) #Splits into multiple arrays (RECURSIVE)
  r = merge_sort(right_side) #Splits into multiple arrays (RECURSIVE)
  merge(l, r)
end

#This will merge the left and right side together. (combine/sort method)
def merge(l, r)
  merged_together = [] #The merged array
  while l.length > 0 && r.length > 0
    if l[0] <= r[0]
      merged_together << l.shift #The shfit deletes the number from the array and moves into
                                  # the merged_together array
    elsif r[0] < l[0]
      merged_together << r.shift  #Same as the if statement except for the r
    end
  end
  merged_together + l + r
end

p merge_sort([1,2,3,4,-12,10,5,22,23])
p merge_sort([3,2,1,2,4,7,10,-32,1,90])
