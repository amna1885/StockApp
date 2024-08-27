class Stock < ApplicationRecord
  include HTTParty

  base_uri 'https://finnhub.io/api/v1'

  def self.new_lookup(ticker_symbol)
      api_key = 'cr68je1r01qnuep549lgcr68je1r01qnuep549m0'
      url = "https://finnhub.io/api/v1/quote?symbol=#{ticker_symbol}&token=#{api_key}"

      response = HTTParty.get(url)
      if response.success?
        stock_data = response.parsed_response
        new(
          ticker: ticker_symbol,
          last_price: stock_data['c']  
        )
      else
        nil
      end
  end
end
