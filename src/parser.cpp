#include <parser.h>
#include <iostream>

std::unique_ptr<State> Parser::parse(const std::string& expr){
	this->_tokenizer = std::make_unique<Tokenizer>(expr);
	
	while(this->_tokenizer->has_next()){
		std::string token = std::move(this->_tokenizer->next_token());
		switch(token[0]){
			case ']': this->_buildSquareBracketExpr();
				break;
			default: this->_stack.push(token);
		};
	}

	return std::make_unique<State>();
}

void Parser::_buildSquareBracketExpr(){
	throw ExprException("Invalid expression");
}
