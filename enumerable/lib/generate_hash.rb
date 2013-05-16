# -*- coding: utf-8 -*-
class GenerateHash
  def self.by_array(source_array)
    Hash[*source_array]
  end

  def self.by_nested_array(source_array)
    Hash[*source_array.flatten]
  end

  def self.by_keys_and_values(keys_array, values_array)
    Hash[*[keys_array, values_array].transpose.flatten]
  end
end
