---
layout: page
title: "Chords"
description: ""
---
{% include JB/setup %}

## Introduction
A chord is an abstraction of a part of a tune or a riff.
A song or a tune comprises of several chords played in varying rhythm.
In chordy, chords can be created using the <code>play</code> function.

There are several broad ways to represent a chord.
A chord can be represented as an array of numbers, where the numbers represent the fret positions of different strings in the chord.
<code>play</code> understands this notation, and you can specify a chord to be played using an array of integers.
In chordy, <code>-1</code> denotes a string that is not played, and an open chord is <code>0</code>.
Other numbers denote the fret position of the string in the chord.

<script src="https://gist.github.com/darth10/4967644.js?file=chords_with_array.rb"><!-- Gist  --></script>

Alternatively, a chord can be specified by it's chord family and type.
The <code>play</code> function takes one required arugment, which can be a chord family like <i>C</i> or <i>F#</i>.
There are a handful of notations to specify a chord family. For example, the <i>C</i> chord family can be represented as <code>C</code>, <code>:C</code> or <code>"C"</code>.
Similarly, <i>F#</i> is <code>FSharp</code>, <code>:F!</code> or <code>"F!"</code>. A <code>!</code> suffix denotes a sharp, and <code>_</code> denotes a flat.

<script src="https://gist.github.com/darth10/4967644.js?file=chords_with_family_type.rb"><!-- Gist  --></script>

Here's a comprehensive table of supported chord families and types.

<table border="1" cellpadding="2">
<tr>
  <th>Family</th><th>Name</th><th>Symbols</th>
</tr>
<tr>
  <th>C</th><th>C</th><th>:C :c</th>
</tr>
</table>
