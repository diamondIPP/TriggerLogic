################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/clk_40Mhz_axi.c \
../src/dispatch.c \
../src/echo.c \
../src/http_get_pars.c \
../src/http_response.c \
../src/main.c \
../src/platform.c \
../src/platform_gpio.c \
../src/prot_malloc.c \
../src/pulser.c \
../src/rate_calc.c \
../src/real_time_clk_axi.c \
../src/stream_readout.c \
../src/txperf.c \
../src/urxperf.c \
../src/utxperf.c \
../src/web_utils.c \
../src/webserver.c 

OBJS += \
./src/clk_40Mhz_axi.o \
./src/dispatch.o \
./src/echo.o \
./src/http_get_pars.o \
./src/http_response.o \
./src/main.o \
./src/platform.o \
./src/platform_gpio.o \
./src/prot_malloc.o \
./src/pulser.o \
./src/rate_calc.o \
./src/real_time_clk_axi.o \
./src/stream_readout.o \
./src/txperf.o \
./src/urxperf.o \
./src/utxperf.o \
./src/web_utils.o \
./src/webserver.o 

C_DEPS += \
./src/clk_40Mhz_axi.d \
./src/dispatch.d \
./src/echo.d \
./src/http_get_pars.d \
./src/http_response.d \
./src/main.d \
./src/platform.d \
./src/platform_gpio.d \
./src/prot_malloc.d \
./src/pulser.d \
./src/rate_calc.d \
./src/real_time_clk_axi.d \
./src/stream_readout.d \
./src/txperf.d \
./src/urxperf.d \
./src/utxperf.d \
./src/web_utils.d \
./src/webserver.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __XMK__ -I../../helo_world_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v9.5 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


