# MuscleBio

Supported on Mac, Linux, and Windows.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'muscle_bio'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install muscle_bio

## Usage

require 'muscle_bio'

MuscleBio.run('muscle -in ../sample/sequence.fasta -out ../sample/sequence.afa')
#pass string in as your current Muscle command
