class Puppy < ApplicationRecord
  class << self
    alias_method :ar_new, :new  

    def new(*args, **attrs)
      if args.size == 3
        name, breed, age = args
        ar_new(attrs.merge(name: name, breed: breed, age: age))
      else
        ar_new(*args, **attrs)
      end
    end
  end
end
