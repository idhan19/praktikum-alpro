@@
#include <iostream>
#include <conio.h>
#define xmap 20
#define ymap 20
using namespace std;

//function
char getinput(int posisix, int posisiy){
	cout<<"ANALOG GAME\n""\W\" = Naik\n\"A\" = belok kiri\n\"S\" = turun\n\"D\" = belok kanan\n'@,"" = SAMPAH"<<endl;
	cout<<"SELAMAT BERMAIN";
 	char input=getch();
  	return input;
}
//struct
struct Developer{
	string nama;
	int nim;
	string kelas;
} developer;
int main()
{
 developer.nama = "Wildan ";
 developer.nim = 1217050141;
 developer.kelas = "C";
 int x,y,posisix,posisiy,batas;
 char input;
 //pointer
 char *arah[4];
 batas=0;
 *arah="G0!";
 int map[xmap][ymap]= {
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
1,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,3,0,1,
1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
1,0,0,1,0,0,0,1,3,0,1,0,1,0,0,0,0,0,3,1,
1,0,0,1,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0,1,
1,0,0,1,0,1,0,1,0,0,1,0,1,0,0,0,0,0,0,1,
1,0,0,1,0,1,0,1,0,0,1,0,1,0,0,0,0,0,0,1,
1,0,0,1,1,1,1,1,0,0,1,0,1,1,1,1,0,0,0,1,
1,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
1,0,0,0,0,0,1,0,1,1,1,1,0,1,0,0,0,1,0,1,
1,0,0,0,3,0,1,0,1,0,0,1,0,1,1,0,0,1,0,1,
1,3,0,1,1,1,1,0,1,0,0,1,0,1,0,1,0,1,0,1,
1,0,0,1,0,0,1,0,1,1,1,1,0,1,0,0,1,1,0,1,
1,0,0,1,0,0,1,0,1,0,0,1,0,1,0,0,0,1,0,1,
1,3,0,1,1,1,1,0,1,0,0,1,0,0,0,0,0,0,0,1,
1,0,0,0,0,3,0,0,0,3,0,0,0,0,0,0,3,0,0,1,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
       };
 while(1){
  cout<<"\t\t(PESAWAT PEMBERSIH ALIEN)"<<endl;
  cout<<"\t\t "<<developer.nama<<" | "<<developer.nim<<" | "<<developer.kelas<<endl; 	

  //looping
  for (x=0;x<xmap;x++){
   for (y=0;y<ymap;y++){
    if (map[x][y]==1){
     if (x==0){
      cout<<"ZZZ";
      }
     else if (x==xmap-1){
      cout<<"ZZZ";
      }
     else {cout<<"[|]";}
    }
    else if (map[x][y]==2){
     cout<<*arah;
	 posisix=x;
     posisiy=y;
    }
    else if (map[x][y]==3){
     cout<<"'@,";
    }
    else {cout<<"   ";}
   }
   cout<<" "<<endl;
  }
  input = getinput(posisix, posisiy);
  if(input=='s'){
   if (map[posisix+1][posisiy]==0 || map[posisix+1][posisiy]==3){
    map[posisix][posisiy]=0;
    map[posisix+1][posisiy]=2;
    *arah=",v,";
    }
   }
  else if(input=='d'){
   if (map[posisix][posisiy+1]==0 || map[posisix][posisiy+1]==3){
    map[posisix][posisiy]=0;
    map[posisix][posisiy+1]=2;
    *arah=" >;";
    }
   }
  else if(input=='a'){
   if (map[posisix][posisiy-1]==0 || map[posisix][posisiy-1]==3){
    map[posisix][posisiy]=0;
    map[posisix][posisiy-1]=2;
    *arah=";< ";
   }
  }
  else if(input=='w'){
   if (map[posisix-1][posisiy]==0 || map[posisix-1][posisiy]==3){
    map[posisix][posisiy]=0;
    map[posisix-1][posisiy]=2;
    *arah="'^'";
    }
   }
  system("cls");
 }
}
