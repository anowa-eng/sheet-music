\header {
  title = "thing"
  composer = "Composer"
}

piano = \new PianoStaff <<
  \new Staff = "upper" {
    \clef treble
    \key e \major
    \tempo 4=80

    \repeat volta 2 {
      <e' a' cis''>8.(<b' e''>16~<b' e''>8)\pp
      \sustainOn<b' e'' a''>16\staccato
      r8
      r2
      \sustainOff
      r2 r8.
      <fis' b'>4
      \sustainOn
      <cis' fis' gis'>\arpeggio
      r2.
    }
    \alternative {
      { 
        e''8. gis''16~gis''8 b''16~b''8. dis'''16~dis'''4~dis'''16
      | }
      <<
        {
          e''8. gis''16~gis''8 b''~b'' dis'''~dis''' e'''
        } \\ 
        {
          b'8. dis''16~dis''8 fis''~fis'' 
        }
      >>
    }
  }
  \new Staff = lower {
    \clef bass
    \key e \major

    \tempo 4=80

    {
      \repeat volta 2 {
        <e a b e>8.\pp\accent[<e a b e>16~<e a b e>8]
        <e a b e>16\accent[~<e a b e>8 <e a b e>16~<e a b e>8]
        <e a b e>16\accent[~<e a b e>8\accent <e a b e>16]
        <e a b e>8.\accent[<e a b e>16~<e a b e>8]
        <e a b e>16\accent[~<e a b e>8 <e a b e>16~<e a b e>8]
        <e a b e>16\accent[~<e a b e>8\accent <e a b e>16]

        <e gis b dis>8.\accent[<e gis b dis>16~<e gis b dis>8]
        <e gis b dis>16\accent[~<e gis b dis>8 <e gis b dis>16~<e gis b dis>8]
        <e gis b dis>16\accent[~<e gis b dis>8\accent <e gis b dis>16]
      }
      \alternative {
        {
            <e gis b dis>8.\accent[<e gis b dis>16~<e gis b dis>8]
            <e gis b dis>16\accent[~<e gis b dis>8 <e gis b dis>16~<e gis b dis>8]
            <e gis b dis>16\accent[~<e gis b dis>8\accent <e gis b dis>16] |
        }
        {
            <e gis b dis>8.\accent[<e gis b dis>16~<e gis b dis>8]
            <e gis b dis>16\accent[~<e gis b dis>8 <e gis b dis>16~<e gis b dis>8]
            <e gis b dis>16\accent[~<e gis b dis>8\accent <e gis b dis>16] |
        }
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

  \version "2.18.1"
}