#include <state.h>

State::State(bool endState){
	this->_endState = endState;
	this->_transitions.insert({'\0', nullptr});
}

void State::add_transition(const char& symbol, std::unique_ptr<State> nextState){
	_transitions[symbol] = std::shared_ptr<State>(std::move(nextState));
}

std::shared_ptr<State> State::process_input(const char& symbol){
	auto el = _transitions.find(symbol);
	if(el != _transitions.end()){
		return el->second;
	}
	return _transitions.find('\0')->second;
}

