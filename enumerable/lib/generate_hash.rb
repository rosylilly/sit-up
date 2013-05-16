# -*- coding: utf-8 -*-
class GenerateHash
  def self.method_foo(source_array)
    Hash[*source_array]
  end

  def self.method_bar(source_array)
    Hash[*source_array.flatten]
  end

  def self.method_baz(keys_array, values_array)
    Hash[*[keys_array, values_array].transpose.flatten]
  end
end
