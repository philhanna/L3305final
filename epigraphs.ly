\version "2.20.0"

\pointAndClickOff

#(ly:set-option 'midi-extension "mid")

\header {
  title = "Three Epigraphs of William Blake"
  subtitle = "for Cello and Piano"
  subsubtitle = \markup \large "№ 1"
  composer = "Phil Hanna"
  poet = \markup {
    \smaller
    \center-column {
      \line { William Blake }
      \vspace #-0.3
      \line { (1757-1827) }
    }
  }
}

#(define (my-dynamic-absolute-volume-function dynamic-name)
   (assoc-get dynamic-name
     '(
        ("ppp" . 0.125)
        ("pp"  . 0.250)
        ("p"   . 0.375)
        ("mp"  . 0.500)
        ("mf"  . 0.625)
        ("f"   . 0.750)
        ("ff"  . 0.875)
        ("fff" . 1.000)
        )
     (default-dynamic-absolute-volume dynamic-name)))

H = \markup {
  % Hauptstimme
  \bold \fontsize #10 \char ##x1D1A6
}

N = \markup {
  % Nebenstimme
  \bold \fontsize #10 \char ##x1D1A7
}

E = \markup {
  % End of stimme
  \bold \fontsize #10 \char ##x1D1A8
}



settings = {
  \override Score.MetronomeMark.padding = #5
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.RehearsalMark.font-size = #1 
  \override Beam.breakable = ##t
  \set PianoStaff.connectArpeggios = ##t

}
BG = 
#(define-music-function 
  (parser location theText)
  (markup?)
  #{
    \override HorizontalBracketText.text = #theText
  #}
  )
SG = \startGroup
EG = \stopGroup
tempoI = 84

global = {
  \settings
  \key c \major
  \time 4/4
  \tempo Andante 4=#tempoI
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parts to include from separate files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "cello.ly"
\include "dynamics.ly"
\include "right.ly"
\include "left.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Printed score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  
  \bookOutputName "epigraphs"

  \paper {
    #(set-paper-size "letter")
    ragged-right = ##f
    top-margin = 1\cm
    left-margin = 2\cm
    right-margin = 2\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    system-system-spacing.basic-distance = #20
    score-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 10)
       (padding . 1)
       (stretchability . 10))
    system-separator-markup = \slashSeparator
    print-page-number = ##t
  }

  \markup {
    \fill-line {
      \center-column {
        \line \italic { It is easier to forgive an enemy than to forgive a friend. }
        \line { \char ##x2014 William Blake }
        \vspace #0.75
      }
    }
  }

  \score {
    \keepWithTag #'score
    \new StaffGroup <<
      \new Staff = "cello" \with {
        instrumentName = "Cello"
        \magnifyStaff #(magstep -3)
      } \cello
      \new PianoStaff \with {
        instrumentName = "Piano"
        pedalSustainStyle = #'mixed
      }
      <<
        \new Staff = "upper" << \rh \dynamics >>
        \new Staff = "lower" << \lh >>
      >>
    >>
    \layout {
    }
  }

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Midi score
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  \score {
    \keepWithTag #'midi
    \new StaffGroup <<    
      \new Staff \with {
        midiInstrument = "cello"
      } \cello
      \new PianoStaff \with {
        midiInstrument = "acoustic grand"
        midiReverbLevel = #0.3
      }
      <<
        \new Staff = "upper" << \rh \dynamics >>
        \new Staff = "lower" << \lh \dynamics >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Score
        dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume-function
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cello part printed score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
    
  \bookOutputName "epigraphs-cello-part"

  \paper {
    #(set-paper-size "letter")
    ragged-right = ##f
    top-margin = 1\cm
    left-margin = 2\cm
    right-margin = 2\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    system-system-spacing.basic-distance = #18
    score-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 10)
       (padding . 1)
       (stretchability . 10))
    %system-separator-markup = \slashSeparator
    print-page-number = ##t
  }

  \markup {
    \fill-line {
      \center-column {
        \line \italic { It is easier to forgive an enemy than to forgive a friend. }
        \line { \char ##x2014 William Blake }
        \vspace #0.75
      }
    }
  }

  \score {
    \keepWithTag #'(score parts)
    \new Staff \with {
      instrumentName = "Cello"
    }
    \cello
    \layout {}
  }
}
