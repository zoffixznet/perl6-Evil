use lib <lib ../lib>;
use Evil;
class Foo::Bar is Int {};
class Meow is Foo::Bar {};
say descendants <Meow>.perl;

#use MONKEY-TYPING;
# augment class Any { method last { return self.first: :end; } }
# MAKE-EVIL <Any>;

# say ^10 .last; # prints "9";
