def sluggish_octopus(arr)
  result = arr[0]

  arr.each_with_index do |fish1, idx1|
    arr.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      if fish1.length > fish2.length && fish1.length > result.length
        result = fish1
      else
        result = fish2
      end
    end
  end
  p result
end

# n log n search
class Array
  def merge_sort(&prc)

    prc ||= Proc.new {|x,y| x <=> y}

    mid = self.length/2
    left = self[0..mid]
    right = self[mid..-1]

    sorted_left = left.merge_sort(&prc)
    sorted_right = right.merge_sort(&prc)

    Array.merged(sorted_left ,sorted_right, &prc)

  end

  private
  def self.merge(left,right,&prc)
    merged = []
    until left.empty? || right.empty?
      if prc.call(left.first,right.first,&prc) == 1
        merged << right.shift
      else
        merged << left.shift
      end
    end
    merged += right
    merged += left
    merged
  end
end

sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
