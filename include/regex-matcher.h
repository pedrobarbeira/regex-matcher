#ifndef REGEX_MATCHER_H_ 
#define REGEX_MATCHER_H_

#include <state.h>

class RegexMatcher{
	private:
		std::shared_ptr<State> _startState;
	public:
		explicit RegexMatcher(std::unique_ptr<State> startState);

		bool match(const std::string& input);
};

#endif //REGEX_MATCHER_H_
