class Student

  def initialize
    @badges = []
  end

  def award(badge)
    @badges << badge
  end

  def what_class
    p self.class
  end

  def add_method(new_method)
    self.class.send(:define_method, new_method){}
  end

 # def method_missing(method_name)
 #   "It's alright, #{method_name} does not exist, but I've got your back!"
 # end

  # method_missing_v2 - the almighty
  def method_missing(method_name, *args, &block)
    "It's alright, #{method_name} does not exist, but I've got your back!"
  end

end

student = Student.new
# p student

# student.class.send(:define_method, :does_it_return_true?){true}
# p student.does_it_return_true?

# p student.missing_method
p student.missing_method
