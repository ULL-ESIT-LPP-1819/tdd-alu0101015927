class Array

  def sort_for

    tmp = map{|x| x.reduce(:+)}
    orden = []
    orden.push(tmp[0])

    for i in (1..length - 1)
      for j in (0..i)

        if (tmp[i] < orden[j])
          orden.insert(j,tmp[i])
          break
        elsif (orden[(orden.length)-1] <= tmp[i])
          orden.push(tmp[i])
          break
        end
      end
    end

   return orden

 end

 def sort_each

   tmp = map{ |x| x.reduce(:+)}
   orden = []
   i = 0
    tmp.each do |x|
      a = x
      i1 = i
      j = i1+1

      tmp[j..tmp.length - 1].each do |y|
        if (a > y)
          a = y
          i1 = j
        end
        j+=1
      end

      tmp[i1] = x
      tmp[i] = a
      i+=1

    end

    tmp

  end

end
