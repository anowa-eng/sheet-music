\header {
  title = "thing"
  composer = "Composer"
}

piano = \new PianoStaff <<
  \new Staff = "upper" {
    \clef treble
    \key e \major
    \tempo 4=80

    <e' a' cis''>8.(<b' e''>16~<b' e''>8)
    \sustainOn<b' e'' a''>16\staccato
    r8
    r2
    r2 r8.
    cis''4~cis''16

  }
  \new Staff = lower {
    \clef bass
    \key e \major

    \tempo 4=80

    {
      \repeat volta 2 {
        <e a b e>8.\p\accent[<e a b e>16~<e a b e>8]
        <e a b e>16\accent[~<e a b e>8 <e a b e>16~<e a b e>8]
        <e a b e>16\accent[~<e a b e>8\accent <e a b e>16]

        <e a b e>8.\accent[<e a b e>16~<e a b e>8]
        <e a b e>8.\accent[<e a b e>16~<e a b e>8]
        <e a b e>8.\accent[<e a b e>16]

        <e gis b dis>8.\p\accent[<e gis b dis>16~<e gis b dis>8]
        <e gis b dis>16\accent[~<e gis b dis>8 <e gis b dis>16~<e gis b dis>8]
        <e gis b dis>16\accent[~<e gis b dis>8\accent <e gis b dis>16]

        <e gis b dis>8.\accent[<e gis b dis>16~<e gis b dis>8]
        <e gis b dis>8.\accent[<e gis b dis>16~<e gis b dis>8]
        <e gis b dis>8.\accent[<e a b e>16]
      }
    }
  }
>>

\score {
  <<
    \piano
  >>

  \layout {}
  \midi {}
}