
#include "trigger_logic_axi.h"
#include "rate_calc.h"
void rate_calc() {
	static unsigned int old_coincidence_count;
	static unsigned int old_prescaler_count;
	static unsigned int N_count = 0;
	unsigned int coincidence_count;
	coincidence_count = trigger_logic_rdReg(TRIGGER_LOGIC_AXI_ADR,40);
	unsigned int prescaler_count;
	prescaler_count = trigger_logic_rdReg(TRIGGER_LOGIC_AXI_ADR,48);

	// Count for N cycles
	if (N_count != 1) {
		N_count++;
		return;
	} else {
		N_count = 0;
		int temp_coincidence_rate;
		// Determine the delta for rate calculations
		if (old_coincidence_count > coincidence_count) {
			temp_coincidence_rate = 0xffff - old_coincidence_count + coincidence_count;
		} else {
			temp_coincidence_rate = coincidence_count - old_coincidence_count;
		}
		set_coincidence_rate(temp_coincidence_rate);
		old_coincidence_count = coincidence_count;

		int temp_prescaler_rate;
		if (old_prescaler_count > prescaler_count) {
			temp_prescaler_rate = 0xffff - old_prescaler_count + prescaler_count;
		} else {
			temp_prescaler_rate = prescaler_count - old_prescaler_count;
		}
		old_prescaler_count = prescaler_count;
		set_prescaler_rate(temp_prescaler_rate);
	}
}
static unsigned int  coincidence_rate;
unsigned int set_coincidence_rate(unsigned int rate)
{
	if(rate >0)
	{
		coincidence_rate = rate;
	}
	return coincidence_rate;
}
unsigned int get_coincidence_rate(void)
{
	return coincidence_rate;
}
static unsigned int prescaler_rate;
unsigned int set_prescaler_rate(unsigned int rate)
{
	if(rate >0)
	{
		 prescaler_rate = rate;
	}
	return prescaler_rate;
}
unsigned int get_prescaler_rate(void)
{
	return prescaler_rate;
}
