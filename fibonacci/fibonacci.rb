def fibs(n)
  result = [0, 1]
  return result[0..n-1] if n <= 2
  2.upto(n-1) { |i| result << result[i-1] + result[i-2] }
  result
end
        
def fibs_rec(n)
  return [0, 1][0..n-1] if (1..2).include?(n)
  fibs_rec(n-1) << fibs_rec(n-1)[-1] + fibs_rec(n-2)[-1]
end

puts 'FIBS'
print '1: '; p fibs(1)
print '2: '; p fibs(2)
print '7: '; p fibs(7)

puts 'FIBS_REC'
print '1: '; p fibs_rec(1)
print '2: '; p fibs_rec(2)
print '7: '; p fibs_rec(7)