#ifndef STATE_H_
#define STATE_H_

#include <iostream>
#include <unordered_map>
#include <memory>

class State{
	private:
		bool _endState;
		std::unordered_map<char, std::shared_ptr<State>> _transitions;
	public:
		explicit State(bool endState = false);
		
		void add_transition(const char& symbol, std::unique_ptr<State> nextState);
		std::shared_ptr<State> process_input(const char& symbol);
};

#endif //STATE_H_
