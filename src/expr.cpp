#include <expr.h>

Expr::Expr(const std::string& exprType){
	this->_exprType = std::move(exprType);
}

Expr::Expr(const std::string& exprType, const std::string& value){
	if(exprType != "literalExpr"){
		throw ExprException("Only literalExpr can have value");
	}
	this->_exprType = std::move(exprType);
	this->_value = std::move(value);
}

void Expr::add_children(std::unique_ptr<Expr> expr){
	this->_children.push_back(std::move(expr));
}

std::unique_ptr<State> Expr::buildStateMachine(){
	if(this->_exprType == "bracketExpr"){
		return std::move(_buildBracketExpr());
	}
	if(this->_exprType == "bracketNegateExpr"){
		return std::move(_buildBracketNegateExpr());
	}
	return nullptr;	
}

std::unique_ptr<State> Expr::_buildBracketExpr(){
	std::string literal = this->_children[0]->_value;
	auto startState = std::make_unique<State>(false);	
	for(int i = 0; i < literal.size(); i++){
		auto nextState = std::make_unique<State>(true);
		startState->add_transition(literal[i], std::move(nextState));
	}
	return std::move(startState);
}

std::unique_ptr<State> Expr::_buildBracketNegateExpr(){
	std::string literal = this->_children[0]->_value;
	auto startState = std::make_unique<State>(false);	
	for(int i = 0; i < literal.size(); i++){
		startState->add_transition(literal[i], nullptr);
	}
	startState->add_transition('\0', std::make_unique<State>(true));
	return std::move(startState);

}

const char* ExprException::what() const noexcept{
	return this->_msg.c_str();
}

