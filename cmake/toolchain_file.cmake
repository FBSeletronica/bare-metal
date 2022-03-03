set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

#change according to your toolchain
set(TOOLCHAIN_PATH ${CMAKE_CURRENT_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-10.3-2021.10)

set(CMAKE_C_COMPILER    ${TOOLCHAIN_PATH}/bin/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER  ${TOOLCHAIN_PATH}/bin/arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER  ${TOOLCHAIN_PATH}/bin/arm-none-eabi-gcc)
set(CMAKE_LINKER        ${TOOLCHAIN_PATH}/bin/arm-none-eabi-ld)
set(CMAKE_AR            ${TOOLCHAIN_PATH}/bin/arm-none-eabi-ar)
set(CMAKE_SIZE          ${TOOLCHAIN_PATH}/bin/arm-none-eabi-size)
set(CMAKE_STRIP         ${TOOLCHAIN_PATH}/bin/arm-none-eabi-strip)
set(CMAKE_RANLIB        ${TOOLCHAIN_PATH}/bin/arm-none-eabi-ranlib)
set(CMAKE_OBJCOPY       ${TOOLCHAIN_PATH}/bin/arm-none-eabi-objcopy)

set(CMAKE_C_FLAGS_DEBUG     "-Os -g" CACHE INTERNAL "")
set(CMAKE_C_FLAGS_RELEASE   "-Os -DNDEBUG" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_DEBUG   "${CMAKE_C_FLAGS_DEBUG}" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}" CACHE INTERNAL "")

set(CMAKE_EXE_LINKER_FLAGS "-nostartfiles -T ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32f103c8tx.ld --specs=nosys.specs" CACHE INTERNAL "")

set(CMAKE_C_FLAGS   "-Wno-psabi -fdata-sections -ffunction-sections -Wl,--gc-sections" CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -fno-rtti -fno-exceptions -fno-unwind-tables" CACHE INTERNAL "")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)