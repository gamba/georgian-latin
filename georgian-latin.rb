# -*- coding: utf-8 -*-

# http://en.wikipedia.org/wiki/Georgian_alphabet#Transcription
# http://en.wikipedia.org/wiki/ISO_9984
# test_string = "ა ბ გ დ ე ვ ზ თ ი კ ლ მ ნ ო პ ჟ რ ს ტ უ ფ ქ ღ ყ შ ჩ ც ძ წ ჭ ხ ჯ ჰ ჱ ჲ ჳ ჴ ჵ ჶ"

class String
  
  def to_latin(map = 'iso9984')
    mapname = case map
      when 'ge_ascii'    then String::GE_ASCII
      when 'ge_national' then String::GE_NATIONAL
      when 'ge_bgn'      then String::GE_BGN
      when 'iso9984'     then String::ISO9984
      else String::ISO9984
    end
    convert_kartuli_to_latin(String.new(self),mapname)
  end
    
  def convert_kartuli_to_latin(str,map)
    map.each { |lat,ge|
      packed = ge.pack('U*')
      rxp = Regexp.new("[#{packed}]", nil)
      str.gsub!(rxp, lat)
    }
    str
  end
  
  GE_ASCII = {
    'a'   => [4304],
    'b'   => [4305],
    'g'   => [4306],
    'd'   => [4307],
    'e'   => [4308],
    'v'   => [4309],
    'z'   => [4310],
    'i'   => [4312],
    'l'   => [4314],
    'm'   => [4315],
    'n'   => [4316],
    'o'   => [4317],
    'zh'  => [4319],
    'r'   => [4320],
    's'   => [4321],
    't'   => [4322,4311],
    'u'   => [4323],
    'p'   => [4324,4318],
    'k'   => [4325,4313],
    'gh'  => [4326],
    'q'   => [4327],
    'sh'  => [4328],
    'dz'  => [4331],
    'ts'  => [4332,4330],
    'ch'  => [4333,4329],
    'kh'  => [4334],
    'j'   => [4335],
    'h'   => [4336]
  }
  
  GE_NATIONAL = {
    "a"   => [4304], #["ა"],
    "b"   => [4305], #["ბ"],
    "g"   => [4306], #["გ"],
    "d"   => [4307], #["დ"],
    "e"   => [4308], #["ე"],
    "v"   => [4309], #["ვ"],
    "z"   => [4310], #["ზ"],
    "t"   => [4311], #["თ"],
    "i"   => [4312], #["ი"],
    "k'"  => [4313], #["კ"],
    "l"   => [4314], #["ლ"],
    "m"   => [4315], #["მ"],
    "n"   => [4316], #["ნ"],
    "o"   => [4317], #["ო"],
    "p'"  => [4318], #["პ"],
    "zh"  => [4319], #["ჟ"],
    "r"   => [4320], #["რ"],
    "s"   => [4321], #["ს"],
    "t'"  => [4322], #["ტ"],
    "u"   => [4323], #["უ"],
    "p"   => [4324], #["ფ"],
    "k"   => [4325], #["ქ"],
    "gh"  => [4326], #["ღ"],
    "q'"  => [4327], #["ყ"],
    "sh"  => [4328], #["შ"],
    "ch"  => [4329], #["ჩ"],
    "ts"  => [4330], #["ც"],
    "dz"  => [4331], #["ძ"],
    "ts'" => [4332], #["წ"],
    "ch'" => [4333], #["ჭ"],
    "kh"  => [4334], #["ხ"],
    "j"   => [4335], #["ჯ"],
    "h"   => [4336]  #["ჰ"]
  }
  
  GE_BGN = {
    "a"   => [4304], #["ა"],
    "b"   => [4305], #["ბ"],
    "g"   => [4306], #["გ"],
    "d"   => [4307], #["დ"],
    "e"   => [4308], #["ე"],
    "v"   => [4309], #["ვ"],
    "z"   => [4310], #["ზ"],
    "t'"  => [4311], #["თ"],
    "i"   => [4312], #["ი"],
    "k"   => [4313], #["კ"],
    "l"   => [4314], #["ლ"],
    "m"   => [4315], #["მ"],
    "n"   => [4316], #["ნ"],
    "o"   => [4317], #["ო"],
    "p"   => [4318], #["პ"],
    "zh"  => [4319], #["ჟ"],
    "r"   => [4320], #["რ"],
    "s"   => [4321], #["ს"],
    "t"   => [4322], #["ტ"],
    "u"   => [4323], #["უ"],
    "p'"  => [4324], #["ფ"],
    "k'"  => [4325], #["ქ"],
    "gh"  => [4326], #["ღ"],
    "q"   => [4327], #["ყ"],
    "sh"  => [4328], #["შ"],
    "ch'" => [4329], #["ჩ"],
    "ts'" => [4330], #["ც"],
    "dz"  => [4331], #["ძ"],
    "ts"  => [4332], #["წ"],
    "ch"  => [4333], #["ჭ"],
    "kh"  => [4334], #["ხ"],
    "j"   => [4335], #["ჯ"],
    "h"   => [4336]  #["ჰ"]
  }
  
  # ISO9984 is the only standard who covers characters 'til 4342 (even 4344! but is not in the iso standard).
  # http://en.wikipedia.org/wiki/ISO_9984
  ISO9984 = {
    "a"   => [4304], #["ა"],
    "b"   => [4305], #["ბ"],
    "g"   => [4306], #["გ"],
    "d"   => [4307], #["დ"],
    "e"   => [4308], #["ე"],
    "v"   => [4309], #["ვ"],
    "z"   => [4310], #["ზ"],
    "t'"  => [4311], #["თ"],
    "i"   => [4312], #["ი"],
    "k"   => [4313], #["კ"],
    "l"   => [4314], #["ლ"],
    "m"   => [4315], #["მ"],
    "n"   => [4316], #["ნ"],
    "o"   => [4317], #["ო"],
    "p"   => [4318], #["პ"],
    "ž"   => [4319], #["ჟ"],
    "r"   => [4320], #["რ"],
    "s"   => [4321], #["ს"],
    "t"   => [4322], #["ტ"],
    "u"   => [4323], #["უ"],
    "p'"  => [4324], #["ფ"],
    "k'"  => [4325], #["ქ"],
    "ḡ"   => [4326], #["ღ"],
    "q"   => [4327], #["ყ"],
    "š"   => [4328], #["შ"],
    "č'"  => [4329], #["ჩ"],
    "c'"  => [4330], #["ც"],
    "j"   => [4331], #["ძ"],
    "c"   => [4332], #["წ"],
    "č"   => [4333], #["ჭ"],
    "x"   => [4334], #["ხ"],
    "ǰ"   => [4335], #["ჯ"],
    "h"   => [4336], #["ჰ"],
    "ē"   => [4337], #["ჱ"],
    "y"   => [4338], #["ჲ"],
    "w"   => [4339], #["ჳ"],
    "ẖ"   => [4340], #["ჴ"],
    "ō"   => [4341], #["ჵ"],
    "f"   => [4342]  #["ჶ"]
  }
end
