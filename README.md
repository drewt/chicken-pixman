chicken-pixman
==============

CHICKEN Scheme bindings for pixman.

Building
--------

Dependencies:

* CHICKEN 5
* pixman

Simply run <code>chicken-install</code> in this directory to build and install
chicken-pixman. To avoid building the egg as root, you can either run
<code>chicken-install -sudo</code> to get permissions via sudo, or else
[change the repository location](https://wiki.call-cc.org/man/5/Extension%20tools#changing-the-repository-location)
to a directory that you can write to.

Usage
-----

    (import pixman)

### Naming conventions

Procedures use the usual <code>kebab-case</code> convention. Predicates get a ?
suffix, e.g. <code>pixman-region-not-empty?</code>.

Struct members are available as SRFI-17 getters/setters named
<code>struct-name-member-name</code>.

Enums use the convention <code>enum-prefix/kind</code>, e.g.
<code>pixman-repeat/normal</code>.
