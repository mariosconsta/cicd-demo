# CMake generated Testfile for 
# Source directory: /home/mariosconsta/cicd-demo
# Build directory: /home/mariosconsta/cicd-demo/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[RunMPIProgram]=] "/cvmfs/software.eessi.io/versions/2023.06/software/linux/x86_64/amd/zen3/software/OpenMPI/4.1.6-GCC-13.2.0/bin/mpiexec" "-n" "4" "/home/mariosconsta/cicd-demo/build/hello_mpi_hdf5")
set_tests_properties([=[RunMPIProgram]=] PROPERTIES  WORKING_DIRECTORY "/home/mariosconsta/cicd-demo/build" _BACKTRACE_TRIPLES "/home/mariosconsta/cicd-demo/CMakeLists.txt;21;add_test;/home/mariosconsta/cicd-demo/CMakeLists.txt;0;")
add_test([=[VerifyHDF5Output]=] "/home/mariosconsta/cicd-demo/build/verify_hdf5")
set_tests_properties([=[VerifyHDF5Output]=] PROPERTIES  DEPENDS "RunMPIProgram" WORKING_DIRECTORY "/home/mariosconsta/cicd-demo/build" _BACKTRACE_TRIPLES "/home/mariosconsta/cicd-demo/CMakeLists.txt;26;add_test;/home/mariosconsta/cicd-demo/CMakeLists.txt;0;")
