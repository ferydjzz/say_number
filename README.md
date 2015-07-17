# SayNumber

SayNumber is a simple gem that say the given number in word

available in two language:

	:id = Indonesia (default)
	
	:en = English

the maximum limit number for now is 999,999,999,999,999

## Installation

Add this line to your application's Gemfile:

	gem 'say_number'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install say_number

## Usage

put the number in the SayNumber.say() function

example : 
 
	SayNumber.say(100320)

it will generate 

	"seratus ribu tiga ratus dua puluh"

in english you need to put :en in parameter say(@number, :en)

	SayNumber.say(100320, :en)

it will generate 

	"one hundred thousand three hundred twenty"

*note : I leave the 'and' because I don't really know where to put it, any suggestion or reference page would be great.


be careful with the number that you parse, ruby can't take a leading 0, in example if you pass 

	SayNumber.say(0123)               # delapan puluh tiga

	SayNumber.say(0123)				  # eighty three

the result would be far from expected, because Ruby will take it as hexadecimal, not octal number.
To make sure you pass the right number, you can pass it as string instead of number

	SayNumber.say("0123")             # seratus dua puluh tiga

	SayNumber.say("0123", :en)		  # one hundred twenty three

if you want to show the result in UPPERCASE or Capitalize, you can simple put upcase or capitalize in the end of the say() function

	SayNumber.say(123).upcase         # SERATUS DUA PULUH TIGA

	SayNumber.say(123).split.map(&:capitalize).join(' ')     # Seratus Dua Puluh Tiga


## Contributing

1. Fork it ( https://github.com/ferydjzz/say_number/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Suggestion

if you have suggestion or request, you can send me an email to ferydjzz@gmail.com