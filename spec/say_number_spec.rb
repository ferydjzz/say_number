require_relative "../lib/say_number"

describe SayNumber do
  describe "Indonesia" do
    subject { SayNumber.say(@number) }
    
    context "basic number" do
      it "return nol" do
        @number = 0
        expect(subject).to eq "nol"
      end
      it "return seratus" do
        @number = 100
        expect(subject).to eq "seratus"
      end
      it "return sepuluh ribu" do
        @number = 10000
        expect(subject).to eq "sepuluh ribu"
      end
      it "return sepuluh juta" do
        @number = 10000000
        expect(subject).to eq "sepuluh juta"
      end
      it "return seratus miliyar" do
        @number = 100000000000
        expect(subject).to eq "seratus miliyar"
      end
      it "return seratus triliun" do
        @number = 100000000000000
        expect(subject).to eq "seratus triliun"
      end
      it "error exceed limit" do
        @number = 1000000000000000
        expect{ subject }.to raise_error(RuntimeError, "exceeds the calculation function")
      end
    end

    context "more complicated number" do
      it "return tiga puluh dua" do
        @number = 32
        expect(subject).to eq "tiga puluh dua"
      end
      it "return tiga ratus dua puluh ribu tiga puluh dua" do
        @number = 320032
        expect(subject).to eq "tiga ratus dua puluh ribu tiga puluh dua"
      end
      it "return tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua" do
        @number = 3020320302
        expect(subject).to eq "tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua"
      end
      it "return sepuluh miliyar seratus satu juta seratus satu ribu seratus satu" do
        @number = 10101101101
        expect(subject).to eq "sepuluh miliyar seratus satu juta seratus satu ribu seratus satu"
      end
      it "return satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh" do
        @number = 1234567890
        expect(subject).to eq "satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh"
      end
      it "return sepuluh miliyar dua juta tiga ribu satu" do
        @number = 10002003001
        expect(subject).to eq "sepuluh miliyar dua juta tiga ribu satu"
      end
      it "return sembilan ratus tujuh belas triliun seratus sebelas miliyar tiga ratus lima juta delapan puluh ribu tiga ratus dua" do
        @number = 917111305080302
        expect(subject).to eq "sembilan ratus tujuh belas triliun seratus sebelas miliyar tiga ratus lima juta delapan puluh ribu tiga ratus dua"
      end
    end

    context "float number" do
      it "return tiga puluh dua koma 1" do
        @number = 32.1
        expect(subject).to eq "tiga puluh dua koma satu"
      end
      it "return tiga ratus dua puluh ribu tiga puluh dua koma nol nol satu" do
        @number = 320032.001
        expect(subject).to eq "tiga ratus dua puluh ribu tiga puluh dua koma nol nol satu"
      end
      it "return tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua" do
        @number = 3020320302.0
        expect(subject).to eq "tiga miliyar dua puluh juta tiga ratus dua puluh ribu tiga ratus dua"
      end
      it "return sepuluh miliyar seratus satu juta seratus satu ribu seratus satu koma satu dua tiga" do
        @number = 10101101101.123
        expect(subject).to eq "sepuluh miliyar seratus satu juta seratus satu ribu seratus satu koma satu dua tiga"
      end
      it "return satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh koma sembilan sembilan" do
        @number = 1234567890.99000
        expect(subject).to eq "satu miliyar dua ratus tiga puluh empat juta lima ratus enam puluh tujuh ribu delapan ratus sembilan puluh koma sembilan sembilan"
      end
      it "return sepuluh miliyar dua juta tiga ribu satu koma nol nol nol satu dua" do
        @number = 10002003001.00012
        expect(subject).to eq "sepuluh miliyar dua juta tiga ribu satu koma nol nol nol satu dua"
      end
      it "return the rounding point" do
        @number = 917111305080302.123
        expect(subject).to eq "sembilan ratus tujuh belas triliun seratus sebelas miliyar tiga ratus lima juta delapan puluh ribu tiga ratus dua koma satu"
      end
      it "return the exact value" do
        @number = "917111305080302.10001"
        expect(subject).to eq "sembilan ratus tujuh belas triliun seratus sebelas miliyar tiga ratus lima juta delapan puluh ribu tiga ratus dua koma satu nol nol nol satu"
      end
    end
  end

  describe "English" do
    subject { SayNumber.say(@number, :en) }
    
    context "basic number" do
      it "return zero" do
        @number = 0
        expect(subject).to eq "zero"
      end
      it "return one hundred" do
        @number = 100
        expect(subject).to eq "one hundred"
      end
      it "return ten thousand" do
        @number = 10000
        expect(subject).to eq "ten thousand"
      end
      it "return ten million" do
        @number = 10000000
        expect(subject).to eq "ten million"
      end
      it "return one hundred billion" do
        @number = 100000000000
        expect(subject).to eq "one hundred billion"
      end
      it "return one hundred trillion" do
        @number = 100000000000000
        expect(subject).to eq "one hundred trillion"
      end
      it "error exceed limit" do
        @number = 1000000000000000
        expect{ subject }.to raise_error(RuntimeError, "exceeds the calculation function")
      end
    end

    context "more complicated number" do
      it "return thirty two" do
        @number = 32
        expect(subject).to eq "thirty two"
      end
      it "return three hundred twenty thousand thirty two" do
        @number = 320032
        expect(subject).to eq "three hundred twenty thousand thirty two"
      end
      it "return three billion twenty million three hundred twenty thousand three hundred two" do
        @number = 3020320302
        expect(subject).to eq "three billion twenty million three hundred twenty thousand three hundred two"
      end
      it "return ten billion one hundred one million one hundred one thousand one hundred one" do
        @number = 10101101101
        expect(subject).to eq "ten billion one hundred one million one hundred one thousand one hundred one"
      end
      it "return one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety" do
        @number = 1234567890
        expect(subject).to eq "one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety"
      end
      it "return ten billion two million three thousand one" do
        @number = 10002003001
        expect(subject).to eq "ten billion two million three thousand one"
      end
      it "return nine hundred seventeen trillion one hundred eleven billion three hundred five million eighty thousand three hundred two" do
        @number = 917111305080302
        expect(subject).to eq "nine hundred seventeen trillion one hundred eleven billion three hundred five million eighty thousand three hundred two"
      end
    end

    context "float number" do
      it "return thirty two point one" do
        @number = 32.1
        expect(subject).to eq "thirty two point one"
      end
      it "return three hundred twenty thousand thirty two point three two" do
        @number = 320032.320
        expect(subject).to eq "three hundred twenty thousand thirty two point three two"
      end
      it "return three billion twenty million three hundred twenty thousand three hundred two" do
        @number = 3020320302.0
        expect(subject).to eq "three billion twenty million three hundred twenty thousand three hundred two"
      end
      it "return ten billion one hundred one million one hundred one thousand one hundred one point one zero zero one" do
        @number = 10101101101.1001
        expect(subject).to eq "ten billion one hundred one million one hundred one thousand one hundred one point one zero zero one"
      end
      it "return one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety point zero zero one" do
        @number = 1234567890.001
        expect(subject).to eq "one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety point zero zero one"
      end
      it "return ten billion two million three thousand one point one two three" do
        @number = 10002003001.1230000
        expect(subject).to eq "ten billion two million three thousand one point one two three"
      end
      it "return the rounded point" do
        @number = 917111305080302.10001
        expect(subject).to eq "nine hundred seventeen trillion one hundred eleven billion three hundred five million eighty thousand three hundred two point one"
      end
      it "return the exact value" do
        @number = "917111305080302.10001"
        expect(subject).to eq "nine hundred seventeen trillion one hundred eleven billion three hundred five million eighty thousand three hundred two point one zero zero zero one"
      end
    end
  end
end