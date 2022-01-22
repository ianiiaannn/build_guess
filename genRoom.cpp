#include<iostream>
#define TIMES 8
#define SIZE 22
using namespace std;
int main(){
  for(int i=1;i<=TIMES;i++){
    for(int j=1;j<=TIMES;j++){
      cout<<"execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~"<<SIZE*i<<" ~-4 ~"<<SIZE*j<<" replace force\n";
    }
  }
}