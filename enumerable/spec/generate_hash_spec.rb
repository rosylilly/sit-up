# -*- coding: utf-8 -*-
require 'spec_helper'
describe GenerateHash do
  let(:expected_hash) do
    {
      'key1' => 'value1',
      'key2' => 'value2',
      'key3' => 'value3'
    }
  end

  context 'when array that key, value, key, value... was given' do
    let(:argument) do
      ['key1', 'value1', 'key2', 'value2', 'key3', 'value3']
    end

    subject(:by_array) { GenerateHash.by_array(argument) }

    example do
      expect(by_array).to eq expected_hash
    end
  end

  context 'when array that pairs of key and value was given' do
    let(:argument) do
      [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']]
    end

    subject(:by_nested_array) { GenerateHash.by_nested_array(argument) }

    example do
      expect(by_nested_array).to eq expected_hash
    end
  end

  context 'when array of keys and array of values was given' do
    let(:keys) { ['key1', 'key2', 'key3'] }
    let(:values) { ['value1', 'value2', 'value3'] }

    subject(:by_keys_and_values) { GenerateHash.by_keys_and_values(keys, values)  }

    example do
      expect(by_keys_and_values).to eq expected_hash
    end
  end
end
