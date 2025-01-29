#include <iostream>
#include <regex-builder.h>
#include <vector>

int main(){
	auto parser = std::make_unique<Parser>();
	try{
		auto builder = std::make_unique<RegexBuilder>(std::move(parser));
		auto matcher = builder->build("[abc]");
		if(matcher->match("a")){
			std::cout << "Good\n";
		}	else{
			std::cout << "Bad\n";
		}

	}catch(const ExprException& e){
		std::cout << e.what() << std::endl;
	}
	return 0;
}
