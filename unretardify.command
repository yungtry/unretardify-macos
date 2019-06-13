#!/usr/bin/perl

my $txt=`sw_vers -productVersion`;
print "$txt";
print "\n";

$re1='.*?';	# Non-greedy match on filler
$re2='\\d+';	# Uninteresting: int
$re3='.*?';	# Non-greedy match on filler
$re4='(\\d+)';	# Integer Number 1

$re=$re1.$re2.$re3.$re4;
if ($txt =~ m/$re/is)
{
    $int1=$1;
    #print "$int1";
    if ($int1 > 11)
    {
        print "Project unretardify-macOS\n";
	exec('sudo spctl --master-disable');
	exec('defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false');
	exec('defaults write -g com.apple.mouse.scaling -1');       
    }
    else
    {
        print "Your version of macOS is pretty old. Please consider updating.\n";
    }
}
