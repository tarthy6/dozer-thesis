# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./plugins/DynamicEngine/SDECDynamicEngine
# Target is a library:  

LIBS += -lM3D \
        -lSerialization \
        -lConstants \
        -lSDECDiscreteElement \
        -lRigidBody \
        -lClosestFeatures \
        -rdynamic 
INCLUDEPATH = ../../../plugins/Body/SDECDiscreteElement \
              ../../../plugins/Body/RigidBody \
              ../../../plugins/InteractionModel/ClosestFeatures \
              ../../../yade \
              ../../../toolboxes/Math/M3D \
              ../../../toolboxes/Math/Constants \
              ../../../toolboxes/Libraries/Serialization 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../toolboxes/Math/M3D/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Libraries/Serialization/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Math/Constants/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/SDECDiscreteElement/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/RigidBody/$(YADEDYNLIBPATH) \
               ../../../plugins/InteractionModel/ClosestFeatures/$(YADEDYNLIBPATH) \
               $(YADEDYNLIBPATH) 
DESTDIR = $(YADEDYNLIBPATH) 
CONFIG += debug \
          warn_on \
          dll 
TEMPLATE = lib 
HEADERS += SDECDynamicEngine.hpp 
SOURCES += SDECDynamicEngine.cpp 
