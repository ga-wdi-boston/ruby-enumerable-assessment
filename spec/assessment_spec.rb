require_relative '../lib/assessment.rb'
RSpec.describe Assessment do
  cusa_preamble = "We the People of the United States, in Order to form a more\nperfect Union, establish Justice, insure domestic\nTranquility, provide for the common defence, promote the\ngeneral Welfare, and secure the Blessings of Liberty to\nourselves and our Posterity, do ordain and establish this\nConstitution for the United States of America.\n"
  doi_preamble = "When in the Course of human events, it becomes necessary for\none people to dissolve the political bands which have\nconnected them with another, and to assume among the powers\nof the earth, the separate and equal station to which the\nLaws of Nature and of Nature's God entitle them, a decent\nrespect to the opinions of mankind requires that they should\ndeclare the causes which impel them to the separation.\n"

  before(:example) do
    @response = Assessment.new
  end

  context 'longest method' do
    it 'returns "separation" for DOI preamble' do
      doi_ary = doi_preamble.downcase.split.map { |w| w.gsub(/\W/, '') }
      expect(@response.longest(doi_ary)).to eq('separation')
    end
    it 'returns "constitution" for CUSA preamble' do
      cusa_ary = cusa_preamble.downcase.split.map { |w| w.gsub(/\W/, '') }
      expect(@response.longest(cusa_ary)).to eq('constitution')
    end
  end

  context 'sum method' do
    it 'returns 4950 for 1..99' do
      expect(@response.sum(1..99)).to eq(4950)
    end
    it 'returns 75 for first seven prime numbers' do
      expect(@response.sum([3, 5, 7, 11, 13, 17, 19])).to eq(75)
    end
    it 'returns CUSA preamble for `data/cusa-preamble.txt`' do
      expect(@response.sum(File.open('data/cusa-preamble.txt'))).to eq(cusa_preamble)
    end
    it 'returns CUSA preamble for `data/cusa-preamble.txt`' do
      expect(@response.sum(File.open('data/doi-preamble.txt'))).to eq(doi_preamble)
    end
  end

  context 'some_odd method' do
    it 'returns false when passed [0, 2, 4, 6]' do
      expect(@response.some_odd([0, 2, 4, 6])).to eq(false)
    end
    it 'returns true when passed [1, 2, 4, 6]' do
      expect(@response.some_odd([1, 2, 4, 6])).to eq(true)
    end
    it 'returns true when passed [0, 2, 4, 7]' do
      expect(@response.some_odd([0, 2, 4, 7])).to eq(true)
    end
    it 'returns true when passed [2, 3, 4, 6]' do
      expect(@response.some_odd([2, 3, 4, 6])).to eq(true)
    end
    it 'returns true when passed 2..6' do
      expect(@response.some_odd(2..6)).to eq(true)
    end
  end

  context 'every_even method' do
    it 'returns true when passed [0, 2, 4, 6]' do
      expect(@response.every_even([0, 2, 4, 6])).to eq(true)
    end
    it 'returns false when passed [1, 2, 4, 6]' do
      expect(@response.every_even([1, 2, 4, 6])).to eq(false)
    end
    it 'returns false when passed [0, 2, 4, 7]' do
      expect(@response.every_even([0, 2, 4, 7])).to eq(false)
    end
    it 'returns false when passed [2, 3, 4, 6]' do
      expect(@response.every_even([2, 3, 4, 6])).to eq(false)
    end
    it 'returns false when passed 2..6' do
      expect(@response.every_even(2..6)).to eq(false)
    end
  end

  context 'transform method' do
    it 'returns %w(All Caps Now) when passed %w(all Caps Now)' do
      expect(@response.transform(%w(all Caps Now))).to eq(%w(All Caps Now))
    end
  end

  context 'transform method' do
    it 'returns %w(All Caps Now) when passed %w(all Caps Now)' do
      expect(@response.transform(%w(all Caps Now))).to eq(%w(All Caps Now))
    end
  end

  context 'read_file' do
    it 'returns CUSA preamble for `data/cusa-preamble.txt`' do
      expect(@response.read_file('data/cusa-preamble.txt')).to eq(cusa_preamble.tr("\n", ' ').chop)
    end
    it 'returns DOI preamble for `data/doi-preamble.txt`' do
      expect(@response.read_file('data/doi-preamble.txt')).to eq(doi_preamble.tr("\n", ' ').chop)
    end
  end
end
