#include <tokenizer.h>
#include <iostream>

bool Tokenizer::_isOperator(char ch){
	return ch == '(' 
		|| ch == ')'
		|| ch == '['
		|| ch == ']'
		|| ch == '^'
		|| ch == '*'
		|| ch == '+'
		|| ch == '?'
		|| ch == '$'
		|| ch == '{'
		|| ch == '}'
		|| ch == '|';
}

char Tokenizer::_lookahead(){
	if(this->has_next()){
		return this->_str[this->_cursor+1];
	}
	return '\0';
}

char Tokenizer::_getNext(){
	char ch = this->_str[this->_cursor];
	return ch;
}

Tokenizer::Tokenizer(const std::string& str){
	this->_str = str;
	this->_cursor = 0;
}

bool Tokenizer::has_next(){
	return this->_cursor < this->_str.size();
}

std::string Tokenizer::next_token(){
	std::string token = "";
	
	token += this->_getNext();
	this->_cursor++;

	if(_isOperator(token[0])){
		return token;
	}

	char next = this->_getNext();
	do{
		token += next;
		this->_cursor++;
		next = this->_getNext();
	}while(this->has_next() && !_isOperator(next));

	return token;
}
