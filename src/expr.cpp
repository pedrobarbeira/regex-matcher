#include <expr.h>

Expr::Expr(const std::string& exprType){
	this->_exprType = std::move(exprType);
}

void Expr::add_children(std::unique_ptr<Expr> expr){
	this->_children.push_back(std::move(expr));
}

const char* ExprException::what() const noexcept{
	return this->_msg.c_str();
}

