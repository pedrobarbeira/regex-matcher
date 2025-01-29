#include <regex-builder.h>

RegexBuilder::RegexBuilder(std::unique_ptr<Parser> parser){
	this->_parser = std::move(parser);
}

std::unique_ptr<RegexMatcher> RegexBuilder::build(const std::string& expr){
	std::unique_ptr<State> startState;	
	try{
		startState = std::move(this->_parser->parse(expr));
	}catch(std::exception e){
		std::cout << e.what() << std::endl;
		return nullptr;
	}
	return std::make_unique<RegexMatcher>(std::move(startState));
}


