add_executable(main)

set(LINKER_SCRIPT stm32f103c8tx.ld)
set(STARTUP_FILE  startup_stm32f103c8tx.s)

target_sources(main PRIVATE main.c ${STARTUP_FILE})

set_target_properties(main PROPERTIES
    LINK_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${LINKER_SCRIPT}
    LINK_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${STARTUP_FILE})

add_compile_options("-mcpu=cortex-m3 -mfloat-abi=soft -mthumb")

add_custom_command(
    TARGET main POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O binary ${CMAKE_SOURCE_DIR}/build/bin/main.elf bin/main.bin
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
