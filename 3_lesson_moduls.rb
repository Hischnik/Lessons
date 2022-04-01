module DopResurces

  def self.included(base)# тогда его можно подключать без extend а через include
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods

    @@count_instance = 0

    def count_instance
      @@count_instance
    end

    def add_count_instance
      @@count_instance += 1
    end

  end

  module InstanceMethods
    attr_accessor :manufacturer
  end

end