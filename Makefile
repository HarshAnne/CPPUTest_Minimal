# Silence unncessary makefile output 
ifndef SILENCE
	SILENCE = @
endif

## PATHS #####################################################################
#Get Makefile directory, which should be located at root of project
MAKEFILE_DIR=$(dir $(realpath $(firstword $(MAKEFILE_LIST))))
#Project directory, equivalent to makefile dir (root of project)
PROJECT_DIR=$(MAKEFILE_DIR)

TEST_DIR=$(PROJECT_DIR)/Test

CPPUTEST_HOME=$(TEST_DIR)/cpputest

SRC_DIRS=$(PROJECT_DIR)/Src

INCLUDE_DIRS=$(PROJECT_DIR)
INCLUDE_DIRS+=$(PROJECT_DIR)/Inc
INCLUDE_DIRS+=$(CPPUTEST_HOME)/include

TEST_SRC_DIRS=$(TEST_DIR)
TEST_SRC_DIRS+=$(TEST_DIR)/ut_mySum/

TEST_TARGET=test_runner

# Add the library linking to cpputest
LD_LIBRARIES += -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt

CPPFLAGS += -I$(CPPUTEST_HOME)/include

include $(CPPUTEST_HOME)/build/MakefileWorker.mk

	