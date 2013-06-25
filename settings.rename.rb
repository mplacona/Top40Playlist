require 'ostruct'

configure do
    Config = OpenStruct.new(
        :tinysong_api => 'tinysong.com',
        :tinysong_key => your_tinysong_key
    )
end
