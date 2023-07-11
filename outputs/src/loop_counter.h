#ifndef LOOP_COUNTER_H
#define LOOP_COUNTER_H

template <int LENGTH>
class LoopCounter
{
public:
	LoopCounter() {
		this->value = 0;
	};

	LoopCounter(int start) {
		this->value = start;
	}

	int val() {
		return this->value;
	}

	void operator++() {
		this->value = (this->value == LENGTH) ? 0 : this->value + 1;
	}

	void operator--(){
		this->value = (this->value == 0) ? (LENGTH - 1)	: this->value - 1;
	}

private:
	int value;
};

#endif // !LOOP_COUNTER_H
