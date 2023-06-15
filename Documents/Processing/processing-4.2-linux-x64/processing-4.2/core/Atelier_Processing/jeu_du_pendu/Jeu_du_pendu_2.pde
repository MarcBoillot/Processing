void setup (){
char [] le_mot_a_deviner = {'k','i','w','i','s'}; //<>//
char [] le_mot_cache = {'_','_','_','_','_'};

boolean tableau_identique = false;
//je vérifie s'il a gagné 
while (tableau_identique == false){
     char  lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,
      "Tapez une lettre ?").charAt(0);
  
//je vérifie dans le tableau si la lettre correspond
   for(int i = 0; i < le_mot_a_deviner.length; i++){

      if(le_mot_a_deviner[i] == lettreUtilisateur){
        le_mot_cache[i]=lettreUtilisateur;      
      }
   }
 println(" ");
 for(int k =0; k<le_mot_a_deviner.length; k++){
   print(le_mot_cache[k]);
   } 
tableau_identique = tableau_identique(le_mot_cache, le_mot_a_deviner);
}
println(" ");
println("bravo vous avez trouvé !!!");
}



boolean tableau_identique (char []le_mot_a_deviner, char[] le_mot_cache){
  boolean verification = true;
  int i = 0;
  while ( i < le_mot_a_deviner.length){
    if (le_mot_cache[i] != le_mot_a_deviner[i]){
      verification = false;
      break;
    }
     i = i +1;
  }
  return verification;
}




void draw (){
exit();
}
