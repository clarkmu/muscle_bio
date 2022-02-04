# MuscleBio

Supported on Mac-Intel64, Mac-AMR64, Linux, and Windows. Support Muscle 5.1.

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

```{ruby}
require 'muscle_bio'

MuscleBio.exec(
               '/sample/sequence.fasta', # input file
               '/sample/sequence.afa', # output file
               :PPP # choose from :PPP or :Super5
               )
```

### Version history
  * v0.5.0 - update Muscle to version 5.1.
  * v0.4.0 - Muscle 3.8.1
