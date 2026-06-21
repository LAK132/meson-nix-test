#include <iostream>

int main()
{
#ifdef HEWWO
	std::cout << "hewwo nix :3\n";
#else
	std::cout << "Hello, Nix!\n";
#endif
	return EXIT_SUCCESS;
}
