# def justPrint number
#     puts "Hello i am here #{number}"
# end


# def addition number1,number2
#     puts number1+number2
# end


# def listofNumber(*args)
#     puts args.length
#     puts args[0]
# end
# def defaultArgument(no2,no=1000,no1,no3)
#     puts no
#     puts no1
#     puts no2
#     puts no3
# end
# def iteratorEacch
#     (0..10).to_a.each do |i|
#         puts i
#     end
# end



# iteratorEacch()
# defaultArgument(109,1002,108,110)
# listofNumber ([10,101,20,30])
# addition 10,20
# justPrint 10


# (1..5).to_a.each_with_index do |ele,index|
#     next if index == 3
#     puts "#{index} => #{ele}"
# end


# def print_name
#     yield
# end
# print_name{(1..5).to_a.each_with_index do |ele,index|
#     next if index == 3
#     puts "#{index} => #{ele}"
# end
# }


# def print_Numbers
#     num=[1,2,3,4]
#     yield(num[0])
# end

# print_Numbers do |i|
#     puts "#{i}"
# end


# def my_Each num
#     for i in num
#         yield i
#     end   
# end

# my_Each((1..10).to_a) do |i|

#     puts "#{i}"
# end

# abc = -> (i) do
#     puts "#{i} hello"
# end

# def test_func(abc)
#     abc.call('josh')
# end


# test_func abc

# abc1 = -> (*i) do
#     puts "#{i} hello"
# end

# def test_func1(abc1)
#     puts "before abc1"
#     abc1.call('josh','hello')
#     puts "after abc1"
# end

# test_func1 abc1


# new_proc=Proc.new{
#     puts "hello"
# }


# def data
# {
#     india:['MH','MP'],
#     America:['cal','har']
# }
# end

# def states
#     query = data
#     ->(counrty) do
#         p query[counrty],"=="
#     end
# end
# states.call(:india)
# states.call(:America)
# def test_proc(new_proc)
#     puts "before proc"
#     new_proc.call
#     puts "after proc"
# end

# test_proc new_proc


def plus_1(y)
    x = 1000
    y.call
end

x = 1
y = -> { x + 1}
puts plus_1(y)
puts plus_1(y)