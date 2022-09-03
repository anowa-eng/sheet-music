\header {
  title = "Untitled"
  composer = "Composer"
}

piano = \new PianoStaff \with instrumentName="Piano/Electric Piano" <<
  \new Staff {
    \clef treble
    \key des \major
    \time 4/4

    \tempo 4=60

    \relative c' {
      ees4. des16(ees f8~f16 ges16~ges8 f8) aes4.
      f16 ees des4 d

      ees4. des16(ees f8~f16 ges16~ges8 f8) aes4.
      aes16 bes aes4 g4

      ges4. des16 ees f8~f16 ges16~ges8 f8
      des4 \tuplet 3/1 { ges aes ges } f4 e

      ees4. des16(ees f8~f16 ges16~ges8 f8)
      des4
      \tuplet 3/1 {<bes des> <aes c> <c ees>}
      \tuplet 3/1 {<des f> <f aes> <aes bes>}
      <des, f aes c>
    }
  }

  \new Staff {
    \clef bass
    \key des \major
    \time 4/4

    \set Staff.midiInstrument = "electric piano 1"

    \repeat unfold 4 {
      <ees ges bes des'>2
      <ees f aes c'>
      <f aes c' des' f'>
      <ges bes des' ees'>4
      <e g b d'>
    }
  }
>>

sinewave = \new Staff \with midiInstrument = "lead 2" {
  <ees ges bes des'>2
}

\score {
  <<
    \piano
    \sinewave
  >>

  \layout {}
  \midi {}
}
