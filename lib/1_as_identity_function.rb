# -*- coding: utf-8 -*-

class Fixnum
  def to_proc
    lambda {|x| x}
  end
end
