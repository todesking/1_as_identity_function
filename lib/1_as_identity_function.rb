# -*- coding: utf-8 -*-

class Fixnum
  def to_proc
    raise NoMethodError unless self == 1
    lambda {|x| x}
  end
  def respond_to_with_1_as_identity_function?(name, include_private = false)
    if name.to_s == 'to_proc'
      return self == 1
    else
      return respond_to_without_1_as_identity_function?(name, include_private)
    end
  end
  alias respond_to_without_1_as_identity_function? respond_to?
  alias respond_to? respond_to_with_1_as_identity_function?
end
