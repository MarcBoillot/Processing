void setup (){
char [] le_mot_a_deviner = {'k','i','w','i','s'};
char [] le_mot_cache = {'_','_','_','_','_'};
int nbs_tentatives_restantes = 7;
int nb_de_lettre_presente = 0;
boolean tableau_identique = false;
//je vérifie s'il a gagné 
while (tableau_identique == false && nbs_tentatives_restantes > 0){ //<>//
     char  lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,
      "Tapez une lettre ?").charAt(0);
//je vérifie dans le tableau si la lettre correspond a une cellule du tableau
       for(int i = 0; i < le_mot_a_deviner.length; i++){
    
          if(le_mot_a_deviner[i] == lettreUtilisateur){
            le_mot_cache[i]=lettreUtilisateur;  
            nb_de_lettre_presente = nb_de_lettre_presente + 1;
          }
       }
   if (nb_de_lettre_presente>0){
   println("Cette lettre est présente",nb_de_lettre_presente ,"fois dans le mot");
   }
   else{
    println("Cette lettre n’est pas présente dans le mot");
    nbs_tentatives_restantes = nbs_tentatives_restantes - 1;
   }
   println("il vous reste",nbs_tentatives_restantes,"tentative");
   nb_de_lettre_presente = 0;  
   println(" ");
 
 for(int k =0; k<le_mot_a_deviner.length; k++){
 print(le_mot_cache[k]);
   } 
println(" ");
tableau_identique = tableau_identique(le_mot_cache, le_mot_a_deviner);
}
  if (tableau_identique == true && nbs_tentatives_restantes > 0){
  println(" ");
  println("bravo vous avez trouvé !!!");
  }else{
  println("vous avez perdu");
  }
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
