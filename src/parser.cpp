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

	return this->_rootExpr->buildStateMachine();
}

void Parser::_buildSquareBracketExpr(){
	std::string literal = this->_stack.top();
	this->_stack.pop();
	std::string op1 = this->_stack.top();
	this->_stack.pop();
	if(op1 == "^"){
		std::string op2 = this->_stack.top();
		this->_stack.pop();
		if(op2 != "["){
			throw ExprException("Invalid expression");
		}
		this->_rootExpr = std::make_unique<Expr>("bracketNegateExpr");
	}else{
		if(op1 != "["){
			throw ExprException("Invalid expression");
		}
		this->_rootExpr = std::make_unique<Expr>("bracketExpr");
	}
	auto literalExpr = std::make_unique<Expr>("literalExpr", literal);
	this->_rootExpr->add_children(std::move(literalExpr));
}
