unit module Evil:ver<1.001001>;

sub MAKE-EVIL (*@classes) is export {
    for @classes {

    }
}

sub descendants ($name, $prefix = '', $ns = ::GLOBAL.WHO) is export {
    my @descendants;
    for $ns.keys {
        my $key = $prefix ~ $_;
        try @descendants.append: ::($key).^parents: :all;
        @descendants.append: descendants $name, $key ~ '::', $ns{$_}
            if $ns{$_}.keys;
    }

    return @descendants.unique;
}

# my sub is-core ($name) {
#     my @parts = $name.split("::");
#     my $ns := ::CORE.WHO;
#     for @parts {
#         return False unless $ns{$_}:exists;
#         $ns := $ns{$_}.WHO;
#     };
#     True;
# }
