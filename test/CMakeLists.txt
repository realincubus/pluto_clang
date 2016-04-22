CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

enable_testing()

set ( TESTS 
      jacobi-1d-imper.c 
      jacobi-2d-imper.c 
      matmul.c 
      costfunc.c 
      fdtd-2d.c 
      heat-3d-imperfect.c 
      seq.c 
      gemver.c 
      seidel.c 
      mvt.c 
      mxv.c 
      mxv-seq.c 
      mxv-seq3.c 
      matmul-seq.c 
      matmul-seq3.c 
      darte.c 
      doitgen.c 
      polynomial.c 
      1dloop-invar.c 
      nodep.c 
      simple.c 
      fusion1.c 
      fusion2.c 
      fusion3.c 
      fusion4.c 
      fusion5.c 
      fusion6.c 
      fusion7.c 
      fusion8.c 
      fusion9.c 
      fusion10.c 
      negparam.c 
      tricky1.c 
      tricky2.c 
      tricky3.c 
      tricky4.c 
      ludcmp.c 
      tce-4index-transform.c 
      noloop.c
)

FOREACH( file_name ${TESTS} ) 
  add_test( NAME ${file_name}_sl      COMMAND test_file.sh ${file_name}  --silent --lastwriter )
  add_test( NAME ${file_name}_sltpcn  COMMAND test_file.sh ${file_name}  --silent --lastwriter --tile --parallel --cloogsh --nocloogbacktrack )
  add_test( NAME ${file_name}_slpcn   COMMAND test_file.sh ${file_name}  --silent --lastwriter --partlbtile --cloogsh --nocloogbacktrack )
  add_test( NAME ${file_name}_slntpcn COMMAND test_file.sh ${file_name}  --silent --lastwriter --nofuse --tile --parallel --cloogsh --nocloogbacktrack )
  add_test( NAME ${file_name}_slmtpcn COMMAND test_file.sh ${file_name}  --silent --lastwriter --maxfuse --tile --parallel --cloogsh --nocloogbacktrack )
  add_test( NAME ${file_name}_sln     COMMAND test_file.sh ${file_name}  --silent --lastwriter --nofuse )
ENDFOREACH()

