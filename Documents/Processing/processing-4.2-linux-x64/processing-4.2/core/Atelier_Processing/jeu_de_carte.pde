void  jeu_de_carte (){
  int jeu_de_carte []= new int [32];
  int tableau_carte_six [] = new int [32];
  int carte_six = 0;
  int i = 0;
  while ( i< 32 ){
   jeu_de_carte[i] = (int)random(10);
   print(jeu_de_carte[i]," " );
   i = i + 1;
  }
  println(" ");
  i = 0;
 while ( i < 32){
   if(jeu_de_carte[i] ==6){
     carte_six = carte_six + 1;
   }
   i=i+1;
 }
 i=0;
 while (i < 32){
  if(jeu_de_carte[i] == 6){
    tableau_carte_six[i] = 1;
  }else{
    tableau_carte_six[i]=0;
  }
  i=i+1;
 }
 i=0;
 while(i<32){
  print(tableau_carte_six[i]," ");
  i=i+1;
 }
 println(" ");
 println("nombre de cartes 6 " + ": " +carte_six);
  i=0;
 while(i<32){
  if(tableau_carte_six[i] == 1){
    println("carte_six a la position : ", i+1);
  }
  i=i+1;
 }
}
// La boucle infernale de Blockly
void draw() {
  // On casse le boucle infernale de blockly
  exit();
}
