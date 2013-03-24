# ====================================================================
# 
#        Filename:  Make.common
# 
#     Description:  Makefile for compiling and executing C/C++ files
# 
#         Created:  Saturday 23 March 2013 11:15:42  IST
#        Compiler:  g++
# 
#          Author:  Mandeep Kaur, meghasimak@gmail.com
#         License:  GNU General Public License
#       Copyright:  Copyright (c) 2013, Great Developers
#                   https://github.com/GreatDevelopers 
# 
# ====================================================================

#   Include Make.common file

include Make.common

#   Defining targets

all: run

# For executing program

run : $(OUTPUT)
	./$(OUTPUT)

# For compiling main file

$(OUTPUT) : $(MAIN) $(HEADER)
	$(CXX) $(OFLAG) $(OUTPUT) $(MAIN)

# For cleaning .o files

clean :
	rm -f *.o
