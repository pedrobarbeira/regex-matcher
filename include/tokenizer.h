#ifndef TOKENIZER_H_
#define TOKENIZER_H_

#include <string>
#include <memory>

class Tokenizer{
	private:
		std::string _str;
		int _cursor;
		
		bool _isOperator(char ch);
		char _lookahead();
		char _getNext();
	public:
		explicit Tokenizer(const std::string& str);

		bool has_next();

		std::string next_token();
};

#endif //TOKENIZER_H_
