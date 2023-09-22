# Read: http://puppet-lint.com/checks/
# Using Puppet, install flask.
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
