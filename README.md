# CPPUTest_Minimal
  
1. Clone this repo.  
`git clone https://github.com/HarshavardhanAnne/CPPUTest_Minimal.git`  
  
2. Change directories into cloned dir.    
`cd CPPUTest_Minimal`  
  
3. Create test dir    
`mkdir Test`  
  
4. Add cpputest submodule to current repo in test/ dir.  
`git submodule add https://github.com/cpputest/cpputest Test/cpputest/`  
  
5. Build cpputest from source  
`cd Test/cpputest`  
`./autogen.sh`  
`./configure`  
`make`  
  
6. Verify library compiled by running ls lib/  
   You will see the following files:  
   `libCppUTest.a libCppUTestExt.a`  



