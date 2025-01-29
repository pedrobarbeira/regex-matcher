#ifndef EXPR_H_
#define EXPR_H_

#include <vector>
#include <string>
#include <memory>
#include <exception>
#include <state.h>

class Expr{
	private:
		std::string _exprType;
		std::string _value;
		std::vector<std::unique_ptr<Expr>> _children;
		
		std::unique_ptr<State> _buildBracketExpr();
		std::unique_ptr<State> _buildBracketNegateExpr();
	public:
		explicit Expr(const std::string& exprType);
		explicit Expr(const std::string& exprType, const std::string& value);
		void add_children(std::unique_ptr<Expr> expr);
		std::unique_ptr<State> buildStateMachine();
};

class ExprException : std::exception{
	private:
		std::string _msg;
	public:
		explicit ExprException(const std::string& msg)
			:_msg(msg){};
		const char* what() const noexcept;
};

#endif //EXPR_H_
