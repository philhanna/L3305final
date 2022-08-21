%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Piano left hand - upper voice
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lhUpper = \relative c {
  \voiceOne
  \oneVoice R1*4/4 \voiceOne	| %m1
  \oneVoice R1*4/4 \voiceOne	| %m2
  s1*4/4				| %m3
  s1*4/4				| %m4
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 5
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #5
  
  s1*4/4				| %m5
  s1*4/4				| %m6
  s1*4/4				| %m7
  s1*4/4				| %m8
  \slurDown
  \tuplet 6/4 { r8 bes [ ( f' c f bes, ) ] }
  \tuplet 6/4 { r8 f' [ ( c' a f bes, ) ] }
  |
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 10
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #10
  
  %m10
  r8*2/3 b! ( [ f' d f b, ] )
  r8*2/3 d ( [ g f g d ] )
  r8*2/3 e ( [ b' e, b' e, ] )
  |
  
  %m11
  r8*2/3 bes ( [ f' c f bes, ] )
  r8*2/3 f' ( [c' a f bes, ] )
  |
  
  %m12
  r8*2/3 d ( [ f g b! g ] )
  \tuplet 3/2 { g8 ( b f') }
  
  %m13
  r8*2/3 bes, ( [ f' c f bes, ] )
  r8*2/3 f ( [c' a f bes, ] )
  |
  
  %m14
  r8*2/3 f' ([ des' bes f des ])
  r8*2/3 ees ([g c ees b])
  |
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 15
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #15
  
  s1*3/4			| %m15
  s1*4/4			| %m16
  s1*4/4			| %m17
  s1*4/4			| %m18
  s1*4/4			| %m19
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 20
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #20
  
  s1*4/4			| %m20
  s1*4/4			| %m21
  s1*4/4			| %m22
  s1*4/4			| %m23
  s1*4/4			| %m24  
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 25
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #25
  
  s1*2/4			| %m25
  s1*2/4			| %m26
  s1*2/4			| %m27
  s1*2/4			| %m28
  s1*2/4			| %m29
  s1*2/4			| %m30
  s1*2/4			| %m31
  s1*2/4			| %m32
  s1*2/4			| %m33
  s1*2/4			| %m34
  s1*2/4			| %m35
  s1*2/4			| %m36

  %m37
  \slurDown
  \tuplet 6/4 { r8 bes, [ ( f' c f bes, ) ] }
  \tuplet 6/4 { r8 f' [ ( c' a f bes, ) ] }
  |
  
  %m38
  r8*2/3 b! ( [ f' d f b, ] )
  r8*2/3 d ( [ g f g d ] )
  r8*2/3 e ( [ b' e, b' e, ] )
  |
  
  %m39
  r8*2/3 bes ( [ f' c f bes, ] )
  r8*2/3 f' ( [c' a f bes, ] )
  |
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 40
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #40
    
  %m40
  r8*2/3 d ( [ f g b! g ] )
  \tuplet 3/2 { g8 ( b f') }
  |
  
  %m41
  r8*2/3 bes, ( [ f' c f bes, ] )
  r8*2/3 f ( [c' a f bes, ] )
  |
  
  %m42
  r8*2/3 f' ([ des' bes f' des ])
  r8*2/3 ees, ([g c ees b])
  |

  s1*3/4				| %m43
  s1*4/4				| %m44
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 45
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #45
  
  s1*4/4				| %m45
  s1*4/4				| %m46
  s1*4/4				| %m47
  s1*4/4				| %m48
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Piano left hand - lower voice
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lhLower = \relative c, {
  \voiceTwo
  s1*4/4				| %m1
  s1*4/4				| %m2
  g'8 ( d'8 g4 f2		| %m3
  <e e'>1 )			| %m4
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 5
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #5
 
  \stemUp
  c,2 ( c'4 g4 )			| %m5
  c,2 ( c'4 g4 )			| %m6
  c,2 ( c'4 c,4 )		| %m7
  \stemNeutral
  g'8 ( d'8 g4 f2 )		| %m8
  \stemDown
  ees,2 ees'2 			| %m9
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 10
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #10
  
  g,2 g2 g2			| %m10
  ees2 ees'2 			| %m11
  g,2 f'4			| %m12
  ees2 ees,2 			| %m13
  des'2 c2			| %m14
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 15
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #15
  
  \slurUp
  \stemUp
  b!4 ( a! g! )			| %m15
  \slurDown
  c,4 ( g'2 c4 ) 		| %m16
  c,4 ( g'2 c4 ) 		| %m17
  \stemNeutral
  g8 ( d'8 g4 f2			| %m18
  <e e'>2 <g, g'>2 )		| %m19
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 20
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #20
  
  c,2 ( c'4 g4 ) 		| %m20
  c,2 ( c'4 g4 ) 		| %m21
  c,2 ( c'4 g4 ) 		| %m22
  c,2 ( e'4 c4 ) 		| %m23
  \stemDown
  e'8 ^\staccato d^\staccato c^\staccato b^\staccato
  a^\staccato g^\staccato f^\staccato e^\staccato | %m24
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 25 (2/4 starts)
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #25
  
  \oneVoice R1*2/4 \voiceOne	| %m25
  \oneVoice R1*2/4 \voiceOne	| %m26
  \oneVoice R1*2/4 \voiceOne	| %m27
  \oneVoice R1*2/4 \voiceOne	| %m28
  \slurDown
  a,4 ( gis4 			| %m29
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 30
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #30
  
  g!4 fis4 )			| %m30
  bes4 ( g			| %m31
  c gis )			| %m32
  a8 ( [ e' ] gis, [ e' ]	| %m33
  g,! [ e' ] fis,8 [ e' ] )	| %m34
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 35
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #35
  
  bes8 ( [ g' ] a, [ fis' ]	| %m35
  aes, [ f'! ] g,4 _\fermata ) 	| %m36
  \stemDown
  % Back to 4/4
  ees2 ees'2 			| %m37
  g,2 g2 g2			| %m38
  ees2 ees'2 			| %m39
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 40
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #40
    
  g,2 f'4			| %m40  
  ees2 ees,2 			| %m41
  des'2 c2			| %m42
  \slurUp
  \stemUp
  b!2 _\fermata \oneVoice r4 \voiceOne	| %m43
  \stemNeutral
  
  \clef treble
  <c' e g>1 \arpeggio		| %m44
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Bar 45
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \barNumberCheck #45
  
  <a c e>1 \arpeggio		| %m45
  \clef bass
  <g, d' g>1 \arpeggio		| %m46
  R1*4/4				| %m47
  R1*4/4				| %m48
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Piano left hand - combined
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lh = \relative c {
  \global
  \clef bass
  <<
    \new Voice {
      \lhUpper
    }
    \new Voice {
      \lhLower
    }
  >>
}
