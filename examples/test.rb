#! /usr/bin/env ruby
require 'sensors'
require 'awesome_print'

puts "libsensor version: #{Sensors.version}"

ap Hash[Sensors.chips.map {|chip|
  [chip.name, Hash[chip.features.map {|feature|
    [feature.label, Hash[feature.subfeatures.map {|subfeature|
      [subfeature.name, subfeature.value]
    }]]
  }]]
}]
