int compteur_nbs_identiques (int [] tableau1, int [] tableau2){
 int nbs_identiques = 0;
  for(int i = 0; i<7; i++){
   if (tableau1[i] == tableau2[i]){
     nbs_identiques = nbs_identiques + 1;
   }
 }
  return nbs_identiques;
}



void setup (){


int[] liste1 = {4, 8, 5, 9, 5, 7, 6 };
int[] liste2 = {4, 5, 1, 9, 7, 3, 8 };
int[] liste3 = {9, 5, 7, 9, 4, 4, 4 };


println("Nombres identiques entre la liste1 et liste2" + ": " + compteur_nbs_identiques(liste1, liste2));
println("Nombres identiques entre la liste2 et liste3" + ": " +compteur_nbs_identiques(liste2, liste3));


}
