mrbc playground
===============

mrbc, the mruby compiler, is a utility provided by the [mruby project][0]. mrbc
compiles your ruby program into byte code. The mruby project is still in
preliminary stages, but issues and pull requests are welcome.

This project allows for quick/fun experimentation with the mrbc compiler by
taking care of the compiler/linker options for you. A simple `make`, and your
ruby code is transformed into an executable!

Operating System Requirements
-----------------------------

Unix-like.

Installation
------------

Watch the [codestream](http://codestre.am/4f11323462f5c003a7bbecc07) to see the
installation process for yourself.

1. First, download [mruby][0]. 
2. Build mruby.

        $ cd /where/you/downloaded/mruby
        $ make      

    (Note that `make install` is not currently provided by mruby . The build
    just happens within the project directory.)

3. Now clone this repo:

        $ git clone git://github.com/joequery/mrbc-playground.git

4. Since the mruby project does not currently allow us to `make install`, we
   need to adjust the `Makefile` of the mrbc playground project to reflect where
   the mruby project resides on your system. Simply alter the first line of the
   `Makefile` to read

        MRUBY := /where/you/downloaded/mruby

Usage
-----

Now, feel free to replace the contents of `rubyfile.rb` with basic Ruby code.
At this time, I'm currently unaware of the specific limitations of mruby vs
standard ruby, but you may likely encounter errors at some point.

After you've made your adjustments to `rubyfile.rb`, run

    $ make

The resulting executable, `rubyfile`, can now be run.

    $ ./rubyfile


How it works
------------

TODO

[0]: https://github.com/mruby/mruby
