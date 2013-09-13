# Pupa.rb: A Data Scraping Framework

[![Build Status](https://secure.travis-ci.org/opennorth/pupa-ruby.png)](http://travis-ci.org/opennorth/pupa-ruby)
[![Dependency Status](https://gemnasium.com/opennorth/pupa-ruby.png)](https://gemnasium.com/opennorth/pupa-ruby)
[![Coverage Status](https://coveralls.io/repos/opennorth/pupa-ruby/badge.png?branch=master)](https://coveralls.io/r/opennorth/pupa-ruby)
[![Code Climate](https://codeclimate.com/github/opennorth/pupa-ruby.png)](https://codeclimate.com/github/opennorth/pupa-ruby)

Pupa.rb is a Ruby 2.0 fork of Sunlight Labs' [Pupa](https://github.com/opencivicdata/pupa). It implements an Extract, Transform and Load (ETL) process to scrape data from online sources, transform it, and write it to a database.

## Usage

You can use Pupa.rb to author scrapers that create people, organizations, memberships and posts according to the [Popolo](http://popoloproject.com/) open government data specification. If you need to scrape other types of data, you can also use your own models with Pupa.rb.

The [cat.rb](http://opennorth.github.io/pupa-ruby/docs/cat.html) example shows you how to:

* write a simple Cat class that is compatible with Pupa.rb
* write a processor to extract Cat objects from the Internet
* [TODO] run the processor to write the Cat objects to MongoDB

The [legislature.rb](http://opennorth.github.io/pupa-ruby/docs/legislature.html) example shows you how to:

* use Popolo properties in your classes
* register an extraction task with Pupa.rb
* write individual extraction tasks
* [TODO] create relations between objects
* [TODO] run individual tasks in the processor

* [TODO] register a transformation task with Pupa.rb
* [TODO] run the processor's transformation task

### Extraction method selection

1.  For simpler processors, your processor class need only define a single `extract` method, which will perform all extraction (scraping). See [cat.rb](http://opennorth.github.io/pupa-ruby/docs/cat.html) for an example.

1.  If you are extracting many types of data from the same source, you may want to split extraction into different tasks according to the type of data being extracted. See [legislature.rb](http://opennorth.github.io/pupa-ruby/docs/legislature.html) for an example.

1.  You may want to select the method used to perform an extraction task according to additional criteria. For example, a legislature may publish all legislators before 2000 in one format and all legislators after 2000 in another format. In this case, you may want to select the method used to extract legislators according to the date. See [TODO](http://opennorth.github.io/pupa-ruby/docs/TODO.html) for an example.

You may, of course, write a separate processor class for each extraction task, and only ever define a `extract` method in each class. However, there are various benefits to organizing all related tasks into a single class.

## Bugs? Questions?

This project's main repository is on GitHub: [http://github.com/opennorth/pupa-ruby](http://github.com/opennorth/pupa-ruby), where your contributions, forks, bug reports, feature requests, and feedback are greatly welcomed.

Copyright (c) 2013 Open North Inc., released under the MIT license