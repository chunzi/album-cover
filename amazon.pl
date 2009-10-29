use Net::Amazon;
use Data::Dumper;

# fill the keys first
my $token = '';
my $secret_key = '';

my $ua = Net::Amazon->new( token => $token, secret_key => $secret_key );
my $res = $ua->search(artist => "Shakatak");

for my $p ( $res->properties ) {
    printf "asin: %s album: %s; cover: %s\n", $p->ASIN, $p->album, $p->ImageUrlLarge
    #printf qq{<div><img src="%s" title="%s" /></div>}, $p->ImageUrlLarge, $p->album;
}
