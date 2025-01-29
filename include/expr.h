#ifndef EXPR_H_
#define EXPR_H_

#include <vector>
#include <string>
#include <memory>
#include <exception>

class Expr{
	private:
		std::string _exprType;
		std::vector<std::unique_ptr<Expr>> _children;
	public:
		explicit Expr(const std::string& exprType);
		void add_children(std::unique_ptr<Expr> expr);
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
