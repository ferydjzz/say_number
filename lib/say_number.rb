require "say_number/version"
require 'say_number/config'
require_relative "say_number/languages/indonesia"
require_relative "say_number/languages/english"

module SayNumber
  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield config
  end

  def self.digit_separator(number)
    separated = []
    array_number = number.to_s.split("")
    length = array_number.count
    idx = length-1
    for i in 0..length-1
      if i != 0 && i % 3 == 0
        separated.push(".")
      end
      separated.push(array_number[idx])
      idx = idx-1
    end
    separated = separated.join("")
    return separated
  end

  def self.say(number, language = :id)
    if language == :id
      Indonesia.initialize_sayer
      koma = get_koma(number) if config.decimal?
      separated = digit_separator(number.to_i)
      array = separated.split(".")
      length = array.count
      saying = []
      for i in 0..length-1
        saying.push(Indonesia.get_number_sayer_per_separator(i, array[i]))
      end
      saying = saying.reverse.join(" ")
      if koma.nil?
        result = Indonesia.check_nol(saying).first.strip
      else
        koma = Indonesia.say_koma(koma)
        result = Indonesia.check_nol(saying).first.strip
        return "#{result} #{koma}"
      end
    elsif language == :en
      English.initialize_sayer
      koma = get_koma(number) if config.decimal?
      separated = digit_separator(number.to_i)
      array = separated.split(".")
      length = array.count
      saying = []
      for i in 0..length-1
        saying.push(English.get_number_sayer_per_separator(i, array[i]))
      end
      saying = saying.reverse.join(" ")
      if koma.nil?
        result = English.check_nol(saying).first.strip
      else
        koma = English.say_koma(koma)
        result = English.check_nol(saying).first.strip
        return "#{result} #{koma}"
      end
    else
      raise "Unknown Language"
    end
  end

  private

  def self.get_koma(number)
    splited = number.to_s.split(".")
    zero = [0]
    if splited.count == 2 && splited.last != "0"
      # normalize the floating point .00
      koma = zero.push(splited.last).join(".").to_f
      return koma.to_s.split(".").last
    else
      nil
    end
  end
end
