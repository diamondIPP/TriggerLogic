
volatile int coincidence_rate;
extern volatile int prescaler_rate;
#include "trigger_logic_axi.h"
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
		// Determine the delta for rate calculations
		if (old_coincidence_count > coincidence_count) {
			coincidence_rate = 0xffff - old_coincidence_count + coincidence_count;
		} else {
			coincidence_rate = coincidence_count - old_coincidence_count;
		}
		old_coincidence_count = coincidence_count;

		if (old_prescaler_count > prescaler_count) {
			prescaler_rate = 0xffff - old_prescaler_count + prescaler_count;
		} else {
			prescaler_rate = prescaler_count - old_prescaler_count;
		}
		old_prescaler_count = prescaler_count;
	}
}
