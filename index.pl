#!/usr/bin/perl -w

$time=15;

print "Content-type: text/html\n\n";

print qq{
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>
        Just Fucking Google It
    </title>

    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8" xml:lang="en" />
};

my $query;

$query = $ENV{QUERY_STRING};

$query =~ tr/-A-Za-z _0-9=+%.//cd;

# print "<pre>Query: $query</pre>\n";

my $link = $query ? "http://www.google.com/search?$query" : "http://www.google.com/";

if( $query )
{
    #print qq{<meta http-equiv="Refresh" content="$time;url=http://www.google.com/search?$query">};
    print qq{<meta http-equiv="Refresh" content="$time;url=http://www.google.com/custom?$query&sa=Search&client=pub-5834014132134539&forid=1&ie=UTF-8&oe=UTF-8&cof=GALT%3A%23008000%3BGL%3A1%3BDIV%3A%23336699%3BVLC%3A663399%3BAH%3Acenter%3BBGC%3AFFFFFF%3BLBGC%3A336699%3BALC%3A0000FF%3BLC%3A0000FF%3BT%3A000000%3BGFNT%3A0000FF%3BGIMP%3A0000FF%3BFORID%3A1%3B&hl=en">};

}

print qq{
    <style type="text/css">
        h1 { color: blue; }
        h2 { color: blue; }
        h3 { color: blue; }
        body {
            color: black;
	    background-color: white;
            text-align: center;
            margin-left: 25%;
            margin-right: 25%;
        }
    </style>
</head>

<body>

<h1><a href="$link">Google</a> Is Your Friend</h1>

<h2>All Smart People Use <a href="$link">Google</a></h2>

<h3>It Appears That You Are Not One Of Them</h3>

<p>
<img src="bart.gif" alt="Bart at a blackboard with a pro-google message" />
</p>

<p>
Someone thinks you are an idiot because you were too stupid to check
<a href="$link">Google</a> before asking a question.  They
gave you a link to this site as a joke.  The fact that you followed
it pretty much proves the point.
</p>
};

if( $query )
{
print qq{
<p><strong>You will be redirected to the place you should have gone in the first place in $time seconds.</strong></p>
};
} else {
print qq{
<p>
Hope that helps.
</p>
<p>
Have a nice day.
</p>
};
}

print qq{
<script type="text/javascript"><!--
google_ad_client = "pub-5834014132134539";
google_ad_width = 728;
google_ad_height = 90;
google_ad_format = "728x90_as";
google_ad_type = "text";
google_ad_channel ="";
google_color_border = "336699";
google_color_bg = "FFFFFF";
google_color_link = "0000FF";
google_color_url = "008000";
google_color_text = "000000";
//--></script>
<script type="text/javascript"
  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

<!--
<hr />
<p>
<strong>
WARNING: SITE ABUSES
</strong>
</p>

<p>
It has come to my attention that some sites are redirecting to this one
when their users were not expecting it.  I have <em>no</em> control over
this.  The only sites I have control over that have anything to do with
this site are justfuckinggoogleit.com, www.justfuckinggoogleit.com,
fuckinggoogleit.com, and www.fuckinggoogleit.com.  If any other site is
sending you here, it is <em>their</em> problem, not mine.  They may have
been hacked, or they may be playing a joke.  I don't know, and I can't
do anything about it.  Please stop sending me e-mail about this issue.
</p>
-->

<p>
Please direct abuse reports or server problems to <a href="mailto:webmaster\@justfuckinggoogleit.com">webmaster\@justfuckinggoogleit.com</a>.  
</p>

<p>
<a href="http://www.google.com">Google</a> does not endorse this site, and is not associated with it in any way whatsoever.
</p>

<p>
<a href="http://www.lojban.org/">The Logical Language Group</a>, which
is the primary website hosted by this machine, does not endorse this
site in any way.
</p>

<!--
<p>
If you happen to know of a good unix sysadmin job in or very near San Francisco, please send an e-mail to <a href="mailto:webmaster\@justfuckinggoogleit.com">webmaster\@justfuckinggoogleit.com</a>.  
</p>

No longer really looking.

-->

<p>I've added an <a href="info.html">information page</a>.</p>

<!-- Archives of mail sent to this site can be found at
http://www.justfuckinggoogleit.com/mail/ 
This is the easter egg.
-->

<!-- By the way, http://www.justfuckinggoogleit.com/search?query=foo+bar will show this page and then redirect users to the Google page for searching on "foo bar", as will many other variants. -->

<!-- Search Google
<center>
<form method="get" action="http://www.google.com/custom" target="_top">
<table bgcolor="#ffffff">
<tr><td nowrap="nowrap" valign="top" align="left" height="32">
<a href="http://www.google.com/">
<img src="http://www.google.com/logos/Logo_25wht.gif" border="0" alt="Google" align="middle"></img></a>
<input type="text" name="q" size="31" maxlength="255" value=""></input>
<input type="submit" name="sa" value="Search"></input>
<input type="hidden" name="client" value="pub-5834014132134539"></input>
<input type="hidden" name="forid" value="1"></input>
<input type="hidden" name="ie" value="UTF-8"></input>
<input type="hidden" name="oe" value="UTF-8"></input>
<input type="hidden" name="cof" value="GALT:#008000;GL:1;DIV:#336699;VLC:663399;AH:center;BGC:FFFFFF;LBGC:336699;ALC:0000FF;LC:0000FF;T:000000;GFNT:0000FF;GIMP:0000FF;FORID:1;"></input>
<input type="hidden" name="hl" value="en"></input>
</td></tr></table>
</form>
</center>
Search Google -->

</body>
</html>
};
