spree-printshop
===============

Spree-printshop is an extension for Spree to adapt it for being used as an online printshop.

Features
========

The following features are in the alpha stage of development:

- File upload using Paperclip
- Variants with drop-down menus
- Instant price update according to option selection
- xls product and variant import


Installation
============

Add the gem to bottom of your Gemfile
```
    gem 'spree_printshop', :git => 'git://github.com/samsamai/spree_printshop.git'
```

Then  run
```
    bundle install
```

And then
```
    rails g spree_printshop:install
```
 
Migrate your database
```
    rake db:migrate
```

License
=======

Copyright (c) 2013 Sam Samai, released under the New BSD License All rights reserved.