# SayNumber

Welcome to SayNumber, this is my first gem, I know there is a lot that need to be improve, so let me know if you have any suggestion.

SayNumber is a simple gem that say the given number

(SayNumber adalah gem untuk menggenerate #terbilang dari angka yang diinginkan)

in example : 123400 => "seratus dua puluh tiga ribu empat ratus"


Yeay... Now you can say_number in english too

the maximum number is 100 Trillion for now.


## Installation

Add this line to your application's Gemfile:

	gem 'say_number'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install say_number

## Usage

Simple, just call it SayNumber.say()

example : 
 
	SayNumber.say(100320)

it will generate 

	"seratus ribu tiga ratus dua puluh"

Yeay... Now you can say_number in english too. just add :en in say()

	SayNumber.say(100320, :en)

it will generate 

	"one hundred thousand three hundred twenty"

*note : I leave the 'and' because I don't really know where to put it, any suggestion or reference page would be great.


be careful with the number that you parse, ruby can't take a leading 0, in example if you pass 

	SayNumber.say(0123)               # delapan puluh tiga

the result would be far from expected, because Ruby will take it as hexadecimal, not octal number.
To make sure you pass the right number, you can pass it as string instead of number

	SayNumber.say("0123")             # seratus dua puluh tiga

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