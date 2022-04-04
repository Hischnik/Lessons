i += 1

array = [1, 2, 3]
a, b, c = array # присвоить сразу 3 переменным

x, y = 1, 2 
x, y = y, x # поменять местами не прибегая к 3й переменной...

z ||= 2 # "ИЛИ Присвоить" - присвоить значение если в переменной nil

def met
  @m ||= long_method # т.е. первый раз выполнит длинный метод, но потом он этого делать не будет
end

def has_name?
  !!name # двойное отрицание
end

%w(str str2 str3) # массив строковых значений

arr.each(&:upcase) # выполнить upcase для каждого элемента массива

@code = hash[name] || "#000" # присвоить значение из хэша или если его там нет "#000"

alias_method :be_name, :code # псевданим be_name для метода code

# Переопределение геттора и сеттора
def name=(value)
  @name = value.capitalize # теперь при присваивании имени оно будет сохраняться с большой буквы.
end

def initialize(number, *args) # это значит что number обязателен а все остальные передаем как массив
  @number = number
  @type = args[0] || "Unknown"
  @number_of_wagons = args[1] || 0
end
Class.new("123", "pass")
# ИЛИ лучше хэшом
def initialize(number, options = {}) # это значит что number обязателен а все остальные передаем хэшом
  @number = number
  @type = options[:type] || "Unknown"
  @number_of_wagons = options[:number_of_wagons] || 0
end