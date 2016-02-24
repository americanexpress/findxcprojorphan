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

# Contributing

We welcome Your interest in the American Express Open Source Community on Github. Any Contributor to any Open Source Project managed by the American Express Open Source Community must accept and sign an Agreement indicating agreement to the terms below. Except for the rights granted in this Agreement to American Express and to recipients of software distributed by American Express, You reserve all right, title, and interest, if any, in and to Your Contributions. Please [fill out the Agreement](http://goo.gl/forms/mIHWH1Dcuy).

# License

Any contributions made under this project will be governed by the [Apache License 2.0](https://github.com/americanexpress/findxcprojorphan/blob/master/LICENSE.txt).

# Code of Conduct

This project adheres to the [American Express Community Guidelines](https://github.com/americanexpress/middle-manager/wiki/Code-of-Conduct).
By participating, you are expected to honor these guidelines.
