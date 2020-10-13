require_relative '../lib/say_number'

describe SayNumber do
  context 'use_decimal = true' do
    context 'Indonesia' do
      it 'return tiga puluh dua koma 1' do
        number = 32.1
        expect(SayNumber.say(number)).to eq 'tiga puluh dua koma satu'
      end
      it 'return tiga ratus dua puluh ribu tiga puluh dua koma nol nol satu' do
        number = 320032.001
        expect(SayNumber.say(number)).to eq 'tiga ratus dua puluh ribu tiga puluh dua koma nol nol satu'
      end
      it 'return tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua' do
        number = 3020320302.0
        expect(SayNumber.say(number)).to eq 'tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua'
      end
      it 'return sepuluh miliyar seratus satu juta seratus satu ribu seratus satu koma satu dua tiga' do
        number = 10101101101.123
        expect(SayNumber.say(number)).to eq 'sepuluh miliyar seratus satu juta seratus satu ribu seratus satu koma satu dua tiga'
      end
      it 'return satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh koma sembilan sembilan' do
        number = 1234567890.99000
        expect(SayNumber.say(number)).to eq 'satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh koma sembilan sembilan'
      end
      it 'return sepuluh miliyar dua juta tiga ribu satu koma nol nol nol satu dua' do
        number = 10002003001.00012
        expect(SayNumber.say(number)).to eq 'sepuluh miliyar dua juta tiga ribu satu koma nol nol nol satu dua'
      end
    end

    context 'English' do
      it 'return thirty two point one' do
        number = 32.1
        expect(SayNumber.say(number, :en)).to eq 'thirty two point one'
      end
      it 'return three hundred twenty thousand thirty two point three two' do
        number = 320032.320
        expect(SayNumber.say(number, :en)).to eq 'three hundred twenty thousand thirty two point three two'
      end
      it 'return three billion twenty million three hundred twenty thousand three hundred two' do
        number = 3020320302.0
        expect(SayNumber.say(number, :en)).to eq 'three billion twenty million three hundred twenty thousand three hundred two'
      end
      it 'return ten billion one hundred one million one hundred one thousand one hundred one point one zero zero one' do
        number = 10101101101.1001
        expect(SayNumber.say(number, :en)).to eq 'ten billion one hundred one million one hundred one thousand one hundred one point one zero zero one'
      end
      it 'return one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety point zero zero one' do
        number = 1234567890.001
        expect(SayNumber.say(number, :en)).to eq 'one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety point zero zero one'
      end
      it 'return ten billion two million three thousand one point one two three' do
        number = 10002003001.1230000
        expect(SayNumber.say(number, :en)).to eq 'ten billion two million three thousand one point one two three'
      end
      it 'return the rounded point' do
        number = 917111305080302.10001
        expect(SayNumber.say(number, :en)).to eq 'nine hundred seventeen trillion one hundred eleven billion three hundred five million eighty thousand three hundred two point one'
      end
      it 'return the exact value' do
        number = '917111305080302.10001'
        expect(SayNumber.say(number, :en)).to eq 'nine hundred seventeen trillion one hundred eleven billion three hundred five million eighty thousand three hundred two point one zero zero zero one'
      end
      it 'return one hundred thousand three hundred twenty point zero zero zero zero two' do
        number = 100320.00002
        expect(SayNumber.say(number, :en)).to eq 'one hundred thousand three hundred twenty point zero zero zero zero two'
      end
    end
  end
end
