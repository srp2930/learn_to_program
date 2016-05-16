# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree

def initialize
  @height = 0
  @orange_count = 0
  @age = 0
  @life = true
end

def life
  @life
end

def one_year_passes
        if @life == true
                @height += 0.4
                @age += 1
                orange_production
        else
                puts "Your tree is dead. Make a new tree."
        end
end

def age
        @age.round(0)
end

def height
        if @life == true
        @height.round(2)
        else
        "A dead tree cannot grow!"
        end
end

def orange_count
        if @life == true
        @orange_count.round(0)
        else
        "A dead tree bears no fruit!"
        end
end

def pick_an_orange
        if @life == true
          if @age > 5
          @orange_count = @orange_count - 1
          puts "You picked one orange. Your tree has #{@orange_count.round(0)} oranges left!"
          else
          puts "This tree is too young to bear fruit!"
          end
        else
          puts "You can't pick oranges from a dead tree!"
        end
end

private

def orange_production
        if @age > 5
        @orange_count = @height * 20
        end
end

def death
        if @age >= 25
        @life == false
        puts "The tree has died."
        end
  end


end

ot = OrangeTree.new

puts(ot.orange_count)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.life)
puts(ot.one_year_passes)
puts(ot.pick_an_orange)
puts(ot.age)
puts(ot.life)

puts(ot.life)
22.times do
  ot.one_year_passes
end

puts(ot.life)
puts(ot.age)
puts(ot.orange_count)
puts(ot.height)
puts(ot.pick_an_orange)
puts(ot.life)
