# Findxcprojorphan

This tool will list any source files that exist on the filesystem but aren't referenced by an Xcode project. This
lets you quickly find files that should be deleted or have been erroneously excluded from your project.

## Installation

Add this line to your application's Gemfile:

    gem 'findxcprojorphan'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install findxcprojorphan

## Usage

Suppose you have a project called RadProject.xcodeproj and source files inside RadProjectSrc. After installing the gem,
simply run:

    $ bundle exec findxcprojorphan RadProject.xcodeproj "RadProjectSrc/**/*.{m,swift}"
    
Note the quotes around the glob argument.

Viewing help is easy and fun:

    $ bundle exec findxcprojorphan --help

## Contributing

1. Fork it ( https://github.com/[my-github-username]/findxcprojorphan/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
