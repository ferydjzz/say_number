require_relative '../lib/say_number'

describe SayNumber do
  context 'use_decimal = false' do
    before(:all) do
      SayNumber.configure do |config|
        config.use_decimal = false
      end
    end

    context 'Indonesia' do
      it 'return tiga puluh dua' do
        number = 32.1
        expect(SayNumber.say(number)).to eq 'tiga puluh dua'
      end
      it 'return tiga ratus dua puluh ribu tiga puluh dua' do
        number = 320032.001
        expect(SayNumber.say(number)).to eq 'tiga ratus dua puluh ribu tiga puluh dua'
      end
      it 'return tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua' do
        number = 3020320302.0
        expect(SayNumber.say(number)).to eq 'tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua'
      end
      it 'return sepuluh miliyar seratus satu juta seratus satu ribu seratus satu' do
        number = 10101101101.123
        expect(SayNumber.say(number)).to eq 'sepuluh miliyar seratus satu juta seratus satu ribu seratus satu'
      end
      it 'return satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh' do
        number = 1234567890.99000
        expect(SayNumber.say(number)).to eq 'satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh'
      end
      it 'return sepuluh miliyar dua juta tiga ribu satu' do
        number = 10002003001.00012
        expect(SayNumber.say(number)).to eq 'sepuluh miliyar dua juta tiga ribu satu'
      end
    end

    context 'English' do
      it 'return thirty two' do
        number = 32.1
        expect(SayNumber.say(number, :en)).to eq 'thirty two'
      end
      it 'return three hundred twenty thousand thirty two' do
        number = 320032.320
        expect(SayNumber.say(number, :en)).to eq 'three hundred twenty thousand thirty two'
      end
      it 'return three billion twenty million three hundred twenty thousand three hundred two' do
        number = 3020320302.0
        expect(SayNumber.say(number, :en)).to eq 'three billion twenty million three hundred twenty thousand three hundred two'
      end
      it 'return ten billion one hundred one million one hundred one thousand one hundred one' do
        number = 10101101101.1001
        expect(SayNumber.say(number, :en)).to eq 'ten billion one hundred one million one hundred one thousand one hundred one'
      end
      it 'return one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety' do
        number = 1234567890.001
        expect(SayNumber.say(number, :en)).to eq 'one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety'
      end
      it 'return ten billion two million three thousand one' do
        number = 10002003001.1230000
        expect(SayNumber.say(number, :en)).to eq 'ten billion two million three thousand one'
      end
    end
  end
end
