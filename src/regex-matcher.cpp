#include <regex-matcher.h>

RegexMatcher::RegexMatcher(std::unique_ptr<State> startState){
	this->_startState = std::move(startState);
}

bool RegexMatcher::match(const std::string& input){
	auto nextState = _startState->process_input(input[0]);
	int i = 1;
	while(i < input.size() && nextState != nullptr){
		nextState = nextState->process_input(input[i]);
		i++;
	}
	return nextState != nullptr;
}

