%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Solo cello
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cello = \relative c' {
  \override TrillPitchAccidental.avoid-slur = #'inside
  \global
  \clef bass
  
  c4 \f c8 b8 ~ b4. bes16 ( des )	| %m1
  a2 g8 c,8 ~ c g'16 ( bes16 )		| %m2
  \override TextSpanner
  #'(bound-details left text) = "poco accel."
  d,2 \startTextSpan ~ d8  r8 r4		| %m3
  R1*4/4	 \stopTextSpan			| %m4
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 5
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #5
  \mark \default
  
  e8. ^\markup \italic "a tempo" d16 e8 d ~ d4. e16 ( g16 )	| %m5
  c,2 d4 e8. ( fis16 )			| %m6
  a2 g8 c,8 ~ c8 g'16 ( bes16 )		| %m7
  d,2 ~ d8 r8 r4				| %m8
  \bar "||"
  
  R1*4/4					| %m9
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 10
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #10
  \mark \default
  
  \time 6/4 R1*6/4			| %m10
  \time 4/4 R1*4/4			| %m11
  \time 3/4 R1*3/4			| %m12
  \time 4/4 R1*4/4			| %m13
  R1*4/4					| %m14
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 15
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #15
  \mark \default
  
  \time 3/4
  <<
    { s1*3/4 \cueClefUnset }
    \tag #'parts \new CueVoice \relative c''' {
      \cueClef treble
      <b! f'>8-- ^\markup "Piano" ( [ <b g'>8 ] )
  \tuplet 6/4 { f'16-> [( dis cis b a g ] }
  \tuplet 6/4 { f16 [dis cis b a g)] }
  | %m15
    }
  >>
  \bar "||"
 
  \break

  \time 4/4
  c'4-- ^\markup \italic "cantabile, poco sostenuto" \f c8 b8 ~ b4.bes16 ( des )	| %m16
  a2 g8 c,8 ~ c g'16 ( bes16 )		| %m17
  d,2 \decresc ~ d8 r8 r4 			| %m18
  R1*4/4					| %m19
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 20
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
  \barNumberCheck #20
  \mark \default
  
  e8. \mf d16 e8 d ~ d4. e16 ( g16 )		| %m20
  c,2 d4 e8. ( fis16 )			| %m21
  a2 g8 c,8 ~ c g'16 ( bes16 )		| %m22
  d,2 ( e2 ~				| %m23
  e4 ) r4 r4 \tuplet 7/4 {e16 \cresc ( f g a b c d )}	| %m24
  \bar "||"
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 25
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #25
  \mark \default
  
  %m25
  \clef tenor
  \time 2/4
  \tag #'parts \pageBreak
  e16-. \f ^\markup \italic "agitato, poco più mosso" e-. e ( f )
  e16-. e-. e ( f )
  |
  
  e16 ( f g a ) g ( f e d ) | %m26
  g16-. g-. g ( a ) d,4 | %m27
  \clef bass c16-. c-. c ( d ) f,!4 ~ | %m28
  f16 b-. b ( c ) b16-. b-. b ( c ) | %m29
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 30
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #30
  \mark \default

  b16 ( c d e ) d ( c b a) | %m30
  g8.-- \cresc ( f16 ) c'8.-- ( bes16 ) | %m31
  e!8.-- ( d16 ) g8-- ( f )   | %m32
  e8 \! \relative c' r8 r4    | %m33
  R1*2/4                      | %m34
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 35
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #35
  \mark \default

  %m35
  \clef treble
  \override TextSpanner
  #'(bound-details left text) = "rall."
  \once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (round (/ tempoI 1.1)))
  <f! d'>4 ^\marcato \<  
  <g e'> \startTextSpan ^\marcato
  |

  %m36
  <a f'> ^\marcato 
  \once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (round (/ tempoI 2)))
  \once \override Script.padding = #1
  <b! g'> \! ^\marcato \fermata
  \stopTextSpan
  |
  
  %m37
  \bar "||"
  \clef tenor
  \once \omit Score.MetronomeMark
  \time 4/4
  r8 ^\markup \small \italic "animato"
  \tempo "Tempo I" 4=#tempoI
  g,16 \ff ( a bes c d ees f8
  \tag #'score {
    <<
      { g8 ~ g4 ) }
      { s8 \pitchedTrill s8 \startTrillSpan a s8 \stopTrillSpan }
    >>
  }
  \tag #'midi { \repeat unfold 6 { g32 a32 } }
  |
  
  %m38
  \time 6/4
  r8 b,!16 ( c d e f g a8 
  \tag #'score {
    <<
      { b8 ~ b4 ) }
      { s8 \pitchedTrill s8 \startTrillSpan c s8 \stopTrillSpan }
    >>
  }
  \tag #'midi { \repeat unfold 6 { b32 32 } }
  g16-. ^\H g16-. g ( a )
  d,16-. d16-. d ( e )
  |
  
  %m39
  \time 4/4
  \clef bass a,16-. a-. a ( b ) d,4-- ^\E r2
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 40
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #40
  \mark \default
  
  \time 3/4
  R1*3/4                    | %m40
  
  %m41
  \time 4/4
  \slurUp
  \clef tenor
  r8
  \omit \ff \cresc
  g16 ( a bes c d ees f8 
  \tag #'score {
    <<
      { g8 ~ g4 ) }
      { s8 \pitchedTrill s8 \startTrillSpan a s8 \stopTrillSpan }
    >>
  }
  \tag #'midi { \repeat unfold 6 { g32 a32 } }
  |
  
  %m42
  \clef treble
  \override TextSpanner.bound-details.left.text = 
  \markup \italic "molto espressivo"
  \tupletDown
  \clef treble
  \tuplet 3/2 { r8 \startTextSpan a \fff ( bes ) }
  f'16 a, bes f'
  ees4
  d16 ees, g d'
  \tupletNeutral
  |
  
  %m43
  \time 3/4
  b!2 \! \stopTextSpan \fermata
  \once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (/ tempoI 2))
  r4
  |
  
  \bar "||"
  \clef bass
  \time 4/4
  \override Score.MetronomeMark.padding = #1
  \tempo "Meno mosso" 4=#(inexact->exact (round (* tempoI 0.9)))
  R1*4/4	 | %m44
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 45
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #45
  \mark \default
  
  R1*4/4		| %m45

  %m46
  \override TextSpanner #'(bound-details left text) = "rallentando e doloroso"
  \once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (round (* tempoI 0.75)))
  r4 a,8 ( \mf \startTextSpan bes) f'  a, ~ a bes16 f'16 
  |
  
  %m47  
  ees2 
  \once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (round (* tempoI 0.66)))
  d8  ees,8 ~ ees g16 d'
  |
  
  %m48
  <<
    {
      s4 \> s4 s4 s4 \ppp
    }
    {
      \once \omit Score.MetronomeMark
      \tempo 4=#(inexact->exact (round (* tempoI 0.60)))
      \textLengthOn
      b!1 _\markup \small \italic "dim. al niente" \stopTextSpan \fermata 
      \textLengthOff
    }
  >>
  |	
  
  \bar "|."
}
