# Xmen Danger Room (Mutation Test Example)

This is an example project for mutation testing technique. This gem uses
`mutest-rspec` to run the mutation tests.

The idea is to make a software that manages Xmen members for fighting
villans.

## Usage

The project depends on Ruby to work.

First you need to install all the dependencies necessary. Given you
have Ruby installed, run the following commands.

```
$ gem install bundler
$ bundle install
```

```
# To run the unit tests for the project
$ rspec

# To run the mutation testing with this project
$ mutest --use rspec 'XmenDangerRoom*'
```

For more examples on how to run the mutation testing, follow the [mutest
documentation](https://github.com/backus/mutest#usage).

# How to understand it

The example class tested is in `lib/xmen_danger_room/xmen_member.rb` and
its test is in `spec/xmen_danger_room/xmem_member_spec.rb`.

For you to understand the complete flow on how to use mutation testing
during development process, follow the commit tree below.

1. 24d7423 First version for a Xmen member class
2. 121195c Simple tests to check if member is Wolverine (good time to run mutation testing)
3. 813a7c9 Improved specs based on mutation testing output
4. d83246c Add age restriction feature
5. cad3203 Add tests to check age restriction (good time to run mutation testing)
6. 0e61ec1 Improved tests based on mutation testing output
7. 8c21471 Add xmen member email validation
8. 7b214aa Add tests to check email validation (good time to run mutation testing)
9. 503ad68 Improved tests based on mutation testing output
