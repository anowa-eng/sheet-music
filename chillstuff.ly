\header {
  title = "Untitled"
  composer = "Composer"
}

piano = \new PianoStaff <<
  \new Staff {
    \clef treble
    \key des \major
    \time 4/4

    \tempo 4=60

    \relative c' {
      ees4. des16(ees f8~f16 ges16~ges8 f8) aes4.
      f16 ees des4 d

      ees4. des16(ees f8~f16 ges16~ges8 f8) aes4.
      aes16 bes aes
    }
  }

  \new Staff {
    \clef bass
    \key des \major
    \time 4/4

    \set Staff.midiInstrument = "electric piano 2"

    <ees ges bes des'>2
    <ees f aes c'>
    <f aes c' des'>
    <ges bes des' ees'>4
    <g b d' e'>

    <ees ges bes des'>2
    <ees f aes c'>
    <f aes c' des'>
    <ges bes des' ees'>4
    <g b d' e'>
  }
>>

\score {
  <<
    \piano
  >>

  \layout {}
  \midi {}
}
