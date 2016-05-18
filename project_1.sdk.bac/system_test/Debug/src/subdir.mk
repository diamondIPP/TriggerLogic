################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/testperiph.c \
../src/xaxidma_example_selftest.c \
../src/xaxiethernet_example_intr_sgdma.c \
../src/xaxiethernet_example_util.c \
../src/xintc_tapp_example.c \
../src/xtmrctr_intr_example.c \
../src/xtmrctr_selftest_example.c 

OBJS += \
./src/testperiph.o \
./src/xaxidma_example_selftest.o \
./src/xaxiethernet_example_intr_sgdma.o \
./src/xaxiethernet_example_util.o \
./src/xintc_tapp_example.o \
./src/xtmrctr_intr_example.o \
./src/xtmrctr_selftest_example.o 

C_DEPS += \
./src/testperiph.d \
./src/xaxidma_example_selftest.d \
./src/xaxiethernet_example_intr_sgdma.d \
./src/xaxiethernet_example_util.d \
./src/xintc_tapp_example.d \
./src/xtmrctr_intr_example.d \
./src/xtmrctr_selftest_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../system_test_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v9.5 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


