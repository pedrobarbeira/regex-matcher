#ifndef PARSER_H_
#define PARSER_H_

#include <state.h>
#include <tokenizer.h>
#include <exception>
#include <expr.h>
#include <stack>

class Parser{
	private:
		std::unique_ptr<Tokenizer> _tokenizer;
		std::stack<std::string> _stack;
		std::unique_ptr<Expr> _rootExpr;

		void _buildSquareBracketExpr();
	public:
		std::unique_ptr<State>parse(const std::string& expr);
};

#endif //PARSER_H_
