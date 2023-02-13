require_relative '../gilded_rose.rb'

class DefaultItem < Item
  MAX_QUALITY = 50
  MIN_QUALITY = 0

  def initialize(name:, sell_in:, quality:)
    super(name, sell_in, quality)
  end
end
