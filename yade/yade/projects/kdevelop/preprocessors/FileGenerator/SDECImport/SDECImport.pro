# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./preprocessors/FileGenerator/SDECImport
# Target is a library:  

LIBS += -lSDECDynamicEngine \
        -lSAPCollider \
        -lSimpleNarrowCollider \
        -lBox \
        -lSphere \
        -lAABB \
        -lSerialization \
        -lBallisticDynamicEngine \
        -lMath \
        -lBody \
        -lEngine \
        -lMultiMethods \
        -lSDECPermanentLink \
        -lGeometry \
        -lInteraction \
        -lCollisionGeometrySet2AABBFactory \
        -lCollisionGeometrySet \
        -lForceRecorder \
        -lAveragePositionRecorder \
        -rdynamic 
INCLUDEPATH = $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../plugins/DynamicEngine/SDECDynamicEngine/$(YADEDYNLIBPATH) \
               ../../../plugins/BroadCollider/SAPCollider/$(YADEDYNLIBPATH) \
               ../../../plugins/NarrowCollider/SimpleNarrowCollider/$(YADEDYNLIBPATH) \
               ../../../plugins/GeometricalModel/Box/$(YADEDYNLIBPATH) \
               ../../../plugins/GeometricalModel/Sphere/$(YADEDYNLIBPATH) \
               ../../../plugins/BoundingVolume/AABB/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Libraries/Serialization/$(YADEDYNLIBPATH) \
               ../../../plugins/DynamicEngine/BallisticDynamicEngine/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Libraries/Math/$(YADEDYNLIBPATH) \
               ../../../yade/Body/$(YADEDYNLIBPATH) \
               ../../../yade/Engine/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Libraries/MultiMethods/$(YADEDYNLIBPATH) \
               ../../../plugins/InteractionModel/SDECPermanentLink/$(YADEDYNLIBPATH) \
               ../../../yade/Geometry/$(YADEDYNLIBPATH) \
               ../../../yade/Interaction/$(YADEDYNLIBPATH) \
               ../../../plugins/BoundingVolumeFactory/CollisionGeometrySet2AABBFactory/$(YADEDYNLIBPATH) \
               ../../../plugins/CollisionGeometry/CollisionGeometrySet/$(YADEDYNLIBPATH) \
               ../../../postprocessors/ForceRecorder/$(YADEDYNLIBPATH) \
               ../../../postprocessors/AveragePositionRecorder/$(YADEDYNLIBPATH) \
               $(YADEDYNLIBPATH) 
QMAKE_CXXFLAGS_RELEASE += -lpthread \
                          -pthread 
QMAKE_CXXFLAGS_DEBUG += -lpthread \
                        -pthread 
DESTDIR = $(YADEDYNLIBPATH) 
CONFIG += debug \
          warn_on \
          dll 
TEMPLATE = lib 
HEADERS += SDECImport.hpp 
SOURCES += SDECImport.cpp 
