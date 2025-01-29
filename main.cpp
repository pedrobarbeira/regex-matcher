#include <iostream>
#include <regex-builder.h>
#include <vector>

int main(){
	auto parser = std::make_unique<Parser>();
	try{
		parser->parse("[abc]");	
	}catch(const ExprException& e){
		std::cout << e.what() << std::endl;
	}
	return 0;
}
