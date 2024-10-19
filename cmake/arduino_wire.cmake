set (ARDUINO_WIRE_PATH ${ARDUINO_AVR_PATH}/libraries/Wire/src)

add_library(ArduinoWire STATIC
    ${ARDUINO_WIRE_PATH}/Wire.cpp
    ${ARDUINO_WIRE_PATH}/utility/twi.c
)

target_link_libraries(ArduinoWire PUBLIC ArduinoFlags ArduinoCore)
target_compile_features(ArduinoWire PUBLIC cxx_std_11 c_std_11)
target_include_directories(ArduinoWire PUBLIC
    ${ARDUINO_WIRE_PATH}/
    ${ARDUINO_WIRE_PATH}/utility/
)