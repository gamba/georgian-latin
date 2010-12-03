Georgian alphabet to Latin converter
===================================

Basic String class extension to convert Kartulian characters to Latin. 
Supports standard alphabet conversion to ASCII, Georgian government standard, United States Board Geographic Names (BGN) 
and complete alphabet to ISO 9984 (default).

Example
-------

<pre>
require 'georgian-latin.rb' 
ka = "ა ბ გ დ ე ვ ზ თ ი კ ლ მ ნ ო პ ჟ რ ს ტ უ ფ ქ ღ ყ შ ჩ ც ძ წ ჭ ხ ჯ ჰ ჱ ჲ ჳ ჴ ჵ ჶ"

ka.to_latin('ge_ascii')
=> "a b g d e v z t i k l m n o p zh r s t u p k gh q sh ch ts dz ts ch kh j h ჱ ჲ ჳ ჴ ჵ ჶ"

ka.to_latin('ge_national')
=> "a b g d e v z t i k' l m n o p' zh r s t' u p k gh q' sh ch ts dz ts' ch' kh j h ჱ ჲ ჳ ჴ ჵ ჶ"

ka.to_latin('ge_bgn')
=> "a b g d e v z t' i k l m n o p ž r s t u p' k' ḡ q š č' c' j c č x ǰ h ē y w ẖ ō f"

ka.to_latin('iso9984') or ka.to_latin
=> "a b g d e v z t' i k l m n o p ž r s t u p' k' ḡ q š č' c' j c č x ǰ h ē y w ẖ ō f"
</pre>

Useful links
------------

* http://en.wikipedia.org/wiki/Georgian_alphabet#Transcription
* http://en.wikipedia.org/wiki/ISO_9984
