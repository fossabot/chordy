---
layout: page
title: "Chords"
description: ""
---
{% include JB/setup %}

### Basics
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
Note that the string and symbol representations can be in lowercase as well.

<script src="https://gist.github.com/darth10/4967644.js?file=chords_with_family_type.rb"><!-- Gist  --></script>

### Supported chord families

<table class="chord_families_and_types" style="background:#CCC;">
  <thead>
    <tr>
      <th>Chordy family</th><th>Class name</th><th>Representations</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>C</td><td>C</td><td>:C, :c, "C", "c"</td>
    </tr>

    <tr>
      <td>C#, Db</td><td>CSharp, DFlat</td><td>:C!, :c!, :D_, :d_, "C!", "c!", "D_", "d_"</td>
    </tr>

    <tr>
      <td>D</td><td>C</td><td>:D, :d, "D", "d"</td>
    </tr>

    <tr>
      <td>D#, Eb</td><td>DSharp, EFlat</td><td>:D!, :d!, :E_, :e_, "D!", "d!", "E_", "e_"</td>
    </tr>

    <tr>
      <td>E</td><td>E</td><td>:E, :e, "E", "e"</td>
    </tr>

    <tr>
      <td>F</td><td>F</td><td>:F, :f, "F", "f"</td>
    </tr>

    <tr>
      <td>F#, Gb</td><td>FSharp, GFlat</td><td>:F!, :f!, :G_, :g_, "F!", "f!", "G_", "g_"</td>
    </tr>

    <tr>
      <td>G</td><td>G</td><td>:G, :g, "G", "g"</td>
    </tr>

    <tr>
      <td>G#, Ab</td><td>GSharp, AFlat</td><td>:G!, :g!, :A_, :a_, "G!", "g!", "A_", "a_"</td>
    </tr>

    <tr>
      <td>A</td><td>A</td><td>:A, :a, "A", "a"</td>
    </tr>

    <tr>
      <td>A#, Bb</td><td>ASharp, BFlat</td><td>:A!, :a!, :B_, :b_, "A!", "a!", "B_", "b_"</td>
    </tr>

    <tr>
      <td>B</td><td>B</td><td>:B, :b, "B", "b"</td>
    </tr>
  </tbody>
</table>


### Supported chord types

<table class="chord_families_and_types" style="background:#CCC;">
  <thead>
    <tr>
      <th>Chord type</th><th>Canonical representation</th><th>Representations</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>Major chord</td><td></td><td>:M, :major</td>
    </tr>

    <tr>
      <td>Minor chord</td><td>m</td><td>:m, :minor</td>
    </tr>

    <tr>
      <td>Dominant seventh chord</td><td>7</td><td>:_7, :dominant_7</td>
    </tr>

    <tr>
      <td>Augmented triad chord</td><td>+5</td><td>:aug5, :augmented_5</td>
    </tr>

    <tr>
      <td>Diminished triad chord</td><td>m-5</td><td>:m5,:dim5, :diminished_5</td>
    </tr>

    <tr>
      <td>Major sixth chord</td><td>6</td><td>:M6, :major_6</td>
    </tr>

    <tr>
      <td>Minor sixth chord</td><td>m6</td><td>:m6, :minor_6</td>
    </tr>

    <tr>
      <td>Suspended fourth chord</td><td>sus</td><td>:sus, :sus4, :suspended_4</td>
    </tr>

    <tr>
      <td>Suspended seventh chord</td><td>sus7</td><td>:sus7, :suspended_7</td>
    </tr>

    <tr>
      <td>Major seventh chord</td><td>maj7</td><td>:M7, :major_7</td>
    </tr>

    <tr>
      <td>Augmented seventh chord</td><td>7+5</td><td>:aug7, :augmented_7</td>
    </tr>

    <tr>
      <td>Dominant seven-five chord</td><td>7-5</td><td>:_7_5, :dominant_7_5</td>
    </tr>

    <tr>
      <td>Minor major seventh chord</td><td>m+7</td><td>:mM7, :minor_major_7</td>
    </tr>

    <tr>
      <td>Minor seventh chord</td><td>m7</td><td>:m7, :minor_7</td>
    </tr>

    <tr>
      <td>Augmented major seventh chord</td><td>+7+5</td><td>:aug7_5, :augmented_major_7</td>
    </tr>

    <tr>
      <td>Half-diminished seventh chord</td><td>m7-5</td><td>:m7_5, :half_diminished_7</td>
    </tr>

    <tr>
      <td>Diminished seventh chord</td><td>dim</td><td>:dim, :dim7, :diminished_7</td>
    </tr>

    <tr>
      <td>Major ninth chord</td><td>9</td><td>:M9, :major_9</td>
    </tr>

    <tr>
      <td>Major diminished ninth chord</td><td>-9</td><td>:_9, :dim9, :major_9</td>
    </tr>

  </tbody>
</table>

<script type="text/javascript">
  $(document).ready(function() {
    $(".chord_families_and_types").tablecloth({
      theme: "default",
      striped: true
    });
  });
</script>
