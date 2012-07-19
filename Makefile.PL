
use ExtUtils::MakeMaker;

WriteMakefile( NAME         => 'Math::Int64::C_API::Sample',
               VERSION_FROM => 'lib/Math/Int64/C_API/Sample.pm',
               PREREQ_PM    => { 'Math::Int64' => '0.27_02' },
               AUTHOR       => 'Eto Demerzel <eto.demerzel@usrobots.com>',
               LIBS         => [''], # e.g., '-lm'
               DEFINE       => '', # e.g., '-DHAVE_SOMETHING'
               INC          => '-I.', # e.g., '-I. -I/usr/include/other'
               OBJECT       => '$(O_FILES)', # link all the C files too including perl_math_int64.c
             );
