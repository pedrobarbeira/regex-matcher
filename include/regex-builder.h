#ifndef REGEX_BUILDER_H_
#define REGEX_BUILDER_H_

#include <parser.h>
#include <regex-matcher.h>

class RegexBuilder{
	private:
		std::unique_ptr<Parser> _parser;
	public:
		explicit RegexBuilder(std::unique_ptr<Parser> parser);

		std::unique_ptr<RegexMatcher> build(const std::string& expr);
};

#endif //REGEX_BUILDER_H_
