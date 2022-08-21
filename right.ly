%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Piano right hand
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rh = \relative c' {
  \global
  R1*4/4				| %m1
  R1*4/4				| %m2
  
  %m3
  \slurUp
  \override TextSpanner
  #'(bound-details left text) = "poco accel."
  \once \omit Score.MetronomeMark
  \tempo 4=#(inexact->exact (round (* tempoI 1.15)))
  r4 \startTextSpan a8 ( bes f' a, ~ a bes16 f'16
  |
  
  %m4
  <des des'>1 \stopTextSpan )			| %m4

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 5
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #5
  
  \once \omit Score.MetronomeMark
  \tempo 4=#tempoI
  \slurDown
  r4 ^\markup \italic "a tempo, poco misterioso" <e g c> ( <d fis ais>2 )	| %m5
  r4 <d f a> ( <c e gis>2 )	| %m6
  r4 <bes d g> ( <a c g'>2 )	| %m7
  \tieUp
  r4 a'8 ( bes f' a,8 ~ a4 )
  \tieNeutral
  \slurUp
    \shape #'(
             (0 . 0)
             (0 . 1)
             (0 . 1)
             (0 . 0) 
             ) Slur

  <a c>4. ^\markup \italic "tranquillo"
  ( <c a'>8 ~ q4 q8 <a c>8 )	| %m9
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 10
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #10
  
  \shape #'(
             (0 . -3)
             (0 . 2)
             (0 . 2)
             (0 . -4) 
             ) Slur
  <d g>8. ( <g d'>16 <g d'>8. <b g'>16
  q4 ~ q8. <e, a>16  
  q8. <a, e'>16 <a e'>8 <a b>8 )		| %m10
    \shape #'(
             (0 . 0)
             (0 . 1)
             (0 . 1)
             (0 . 0) 
             ) Slur

  <a c>4. ( <c a'>8 ~ q4 q8 <a c>8 )	| %m11
  \slurNeutral
  <g d'>8. ( <d' g>16 q4 ~ q8 ) r	| %m12
  <c a'>4. ( <a' c>8 ~ q4 q8 <c, a'>8 )	| %m13
  <g ees'>8 ( <ees' g> <ees c'> <c' ees!> )
  <bes! f'>8 [ ( <bes g'> <bes f'> <bes g'> ) ] | %m14
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 15
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #15
  
  <b! f'>8-- ( [ <b g'>8 ] )
  \tuplet 6/4 { f'16 -> [( dis cis b a g ] }
  \tuplet 6/4 { f16 [dis cis b a g)] }
  | %m15
  <<
    \new Voice \relative c'' {
      \voiceOne
      c4-- ^\markup \italic "cantabile, poco sostenuto" c8 ( b ~ b4.) bes16 ( des )	| %m16
      a2 g8 ( c,8 ~ c g'16 bes )		| %m17
    }
    \new Voice \relative c'' {
      \voiceTwo
      <c, e g>1 \arpeggio		| %m16
      <a c e>1	\arpeggio		| %m17
    }
  >>

  \slurUp
  r4 a,8 ( bes f' a, ~ a bes16 f'16 | %m18
  <des des'>1 )			| %m19
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 20
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #20

  \slurDown
  r4 <e' g c> ( <d fis ais>2 )	| %m20
  r4 <d f a> ( <c e gis>2 )	| %m21
  r4 <bes d g> ( <a c g'>2 )	| %m22
  r4 <g bes e> ( <g bes d>2 ~	| %m23
  q4 ) r4 r2			| %m24
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 25
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #25

  %m25
  \clef bass
  r8 ^\markup {
    \hspace #1 \italic { agitato, poco più mosso }
  }
  <a, c e>-.  
  r8 <gis b e>-.
  |

  %m26
  r8 <g bes e>-.
  r8 <f a e'>-.
  |
  
  %m27
  r8 <g bes d>-.
  r8 <fis a d>-.
  |

  %m28
  r8 <f! gis d'>-.
  r8 <gis c! d>-.
  |
  
  %m29
  \pageBreak
  \tupletDown
  \slurUp
  
  \tuplet 3/2 { r8 \shape #'((0 . 0) (0 . 2) (0 . 1) (0 . 0)) Slur c, ( e }
  \tuplet 3/2 { fis gis a }
  |
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 30
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #30
  
  %m30
  \tuplet 3/2 { b, f' a }
  d,16 e f g )
  |
  
  %m31
  \tuplet 3/2 { r8 \shape #'((0 . 0) (0 . 2) (0 . 1) (0 . 0)) Slur f ( a ~ }
  \tuplet 3/2 { a8 g bes ~ }
  |

  %m32
  \tuplet 3/2 { bes8 a c ~ }
  c16 d e f )
  
  %m33
  \clef treble
  e16-. e-. e ( f )
  e16-. e-. e ( f )
  |

  %m34
  e16 ( f g a )
  g ( f e d )
  |
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 35
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #35

  \override TextSpanner
  #'(bound-details left text) = "rall."

  %m35
  g16-. \startTextSpan g-. g ( a )
  d,4
  |

  %m36
  c16-. c-. c ( d )  
  <f,! b d>4 \fermata \stopTextSpan
  |

  \break

  \slurUp
  \shape #'(
             (0 . 0)
             (0 . 1)
             (0 . 1)
             (0 . 0) 
             ) Slur
  <a' c>4. ( <c a'>8 ~ q4 q8 <a c>8 )	| %m37
  
  \shape #'(
             (0 . -3)
             (0 . 2)
             (0 . 2)
             (0 . -4) 
             ) Slur
  <d g>8. ( <g d'>16 <g d'>8. <b g'>16 q4 ~ q8. <e, a>16 ^\N q8. <a, e'>16 <a e'>8 <a b>8 )		| %m38
  
  \shape #'(
             (0 . 0)
             (0 . 1)
             (0 . 1)
             (0 . 0) 
             ) Slur

  \pageTurn
  <a c>4. ^\E ( <c a'>8 ~ q4 q8 <a c>8 )	| %m39
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 40
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #40

  <g d'>8. ( <d' g>16 q4 ~ q8 ) r	| %m40
  <c a'>4. \cresc ( <a' c>8 ~ q4 q8 <c, a'>8 )	| %m41
  
  %m42
  <g ees'>8 \ff ( <ees' g> <ees c'> <c' ees!> )
  <bes! f'>8 [ ( <bes g'> <bes f'> <bes g'> ) ]
  |
  
  %m43
  <b! f'>8 ( [ <b g'>8 ~ ] q4 \fermata )
  r4
  |
  c,4 ^\markup \italic "dolce" c8 ( b ~ b4.) bes16 ( des )	| %m44
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 45
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #45

  a2 g8 ( c,8 ~ c g'16 bes )			| %m45
  
  <bes, d>1 \arpeggio					| %m46
  R1*4/4        | %m47
  R1*4/4        | %m48
}
