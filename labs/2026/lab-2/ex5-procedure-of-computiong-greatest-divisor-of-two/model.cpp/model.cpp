#include <iostream>
using namespace std;

int greatestDivisor(int a,int b){
	int small=(a<b)? a:b;
	for(int d=small;d>=1;d--){
		if(a%d==0&&b%d==0){
			return d;
		}
	}
	return 1;
}

int main(){
	int a=12,b=18;
	cout<<"Greatest Divisor of "<<a<<" and "<<b<<" = "<<greatestDivisor(a,b)<<endl;
	return 0;
}
