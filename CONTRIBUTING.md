# Contributing

Most all of the code is generated automatically by [jaxb2ruby](https://github.com/sshaw/jaxb2ruby).
This project's `Rakefile` contains several tasks that use `jaxb2ruby` to facilitate code generation.

Once you've generated your code you'll need to integrate it into the main `DDEX` module.

You also need to write tests, which means you'll have to create XML test fixtures for the given spec and/or version you're adding.
DDEX is bloated –<i>very bloated</i>, so this repository provides you with a way to generate XML fixtures too.

## Code Generation

Install [jaxb2ruby](https://github.com/sshaw/jaxb2ruby). This requires [JRuby](http://jruby.org).

To generate the Ruby code to process a spec/version you need [a DDEX schema](http://ddex.net/xml) ([this page](http://ddex.net/node/70) may be easier to digest).
Add the schema to the proper location in [this repository's `etc/schemas` directory](https://github.com/sshaw/ddex/tree/master/etc/schemas),
in most cases it is *not* necessary to add any <code>import</code>ed schemas.

Generated code must be mapped to a Ruby namespace. See [`etc/namespaces.yml`](https://github.com/sshaw/ddex/blob/master/etc/namespaces.yml) for examples of this.
Please make sure the namespace mapping follows the conventions used by the other supported specs.

Once you've mapped the namespace you can generate the code from the schema. To do this you must make sure +rake+ is running under JRuby.
All of this is done from the repository's root directory.

To generate the code:

    rake generate SCHEMA=./etc/schemas/xxx/schema.xsd

Note that this may result in circular dependencies, which cause problems for Ruby. You likely wont know about these until you
execute the code and receive an error like this:

    uninitialized constant DDEX::ERN::V33::Deal (NameError)

To resolve this you must remove the line that requires `Deal` and replace it with a [forward declaration](https://en.wikipedia.org/wiki/Forward_declaration)
of `Deal`. See [this](https://github.com/sshaw/ddex/blob/v0.0.1/lib/ddex/ern/v33/related_release_offer_set.rb#L14) for an example.

The next step is to create top-level module for the spec and version being added:

    rake generate:main[ern,3.6] > lib/ddex/ern/v36.rb

Where `ern` is the spec and `3.6` is the ERN version you want to incorporate.


## Adding Code to the Main Module

If you're adding a version to an existing spec this is not necessary. Otherwise, once code is generated for a spec it must be accessible
via the main DDEX module. [Take a look at the file](https://github.com/sshaw/ddex/blob/v0.0.10/lib/ddex/ern.rb) to see how this is done for other specs.

## Testing

Testing requires generating XML instance documents for the spec/version you're adding. This can be tedious.
It is recommended that you let the [Oxygen XML Editor](http://www.oxygenxml.com/download.html) do this for you. While it is not free
they do allow a 30 day trial. This should give you enough time to generate the necessary files.

Note that I have tried generating XMLs from schemas using Visual Studio and Eclipse and they are not as good as Oxygen as
they generate instance documents that have many validation errors. Oxygen has this problem too but, IIRC, it's limited to `ID` and `IDREF`
schema types.

Oxygen schema generation should be done by creating a configuration file suitable for the spec/version you're adding.
This repository contains [one for every spec/version that's supported](https://github.com/sshaw/ddex/tree/v0.0.1/etc/oxygen/samples),
please add yours.

All fixtures must be tested against the [shared example for metadata serialization](https://github.com/sshaw/ddex/tree/v0.0.1/spec/ern/versions_spec.rb#L4).
This is in addition to any spec/version specific tests. See the existing ERN specs for examples.
