def rev(arr)
    i=0
    until i==arr.length
        arr[i],arr[-1-i]=arr[-1-i],arr[i]
        i+=1
    end
    arr
end
arr=["i","s","e","r"]
p rev(arr)