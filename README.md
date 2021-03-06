vatman
======

vatman is a library for checking VAT numbers against the Europa webservice.
This is the ONLY way to check if a VAT number is genuine and in use.

[![Build Status](https://secure.travis-ci.org/neilmiddleton/Vatman.png)](http://travis-ci.org/neilmiddleton/Vatman)

Usage
-----

  vat_number =  Vatman::Check.new('GB', 802925148)
  
  vat_number.valid? => true
  vat_number.name => 'MONOCHROME LIMITED'
  vat_number.address => 'SUITE K\nTHE PAVILLIONS\n1 WESTERN ROAD\nEPSOM\nSURREY\nKT17 1JG'

Installation
------------

  gem install vatman

and then

  require 'vatman'

Note on Patches/Pull Requests
-----------------------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don’t break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

