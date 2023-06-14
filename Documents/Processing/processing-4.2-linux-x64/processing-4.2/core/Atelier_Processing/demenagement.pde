void demenagement() {
int cartons = 34;
int capacite_charge = 9;
int nb_cartons_dans_camion = 0;
//charge du camion
int nbcarton_moins_un_kg = 0;
int nbcarton_entre_un_et_trois_kg = 0;
int nbcarton_entre_trois_et_cinq_kg = 0;
int nbcarton_superieur_a_cinq_kg = 0;
int i = 0;
//bureaux
int [] capacite_des_bureaux = {3, 4, 2, 1, 3, 2, 5, 2, 2, 1, 1, 3, 3, 3, 4};
int [] bureaux_charge = new int [15];
int carton_dans_bureau = 0;

while(cartons > 0){
  println("Le nombre de cartons restant est de" + " " + cartons);
 
  //float poids = random(8);
  
      while (cartons > 0 && nb_cartons_dans_camion < capacite_charge) {
        cartons = cartons - 1;
        nb_cartons_dans_camion = nb_cartons_dans_camion + 1;
      }
  println("Le camion est chargé de" + " " + nb_cartons_dans_camion +" " + "cartons");
  println("je vide le camion");
  
      while(nb_cartons_dans_camion != 0){
          nb_cartons_dans_camion = nb_cartons_dans_camion - 1;
           //<>//
          
          if(bureaux_charge[carton_dans_bureau] == capacite_des_bureaux[carton_dans_bureau]){
            carton_dans_bureau = carton_dans_bureau +1;
          }
          
        /*if (poids <= 1) {
          nbcarton_moins_un_kg = nbcarton_moins_un_kg + 1;  
        }else if (poids >1 && poids <= 3){
            nbcarton_entre_un_et_trois_kg = nbcarton_entre_un_et_trois_kg+ 1;
        }else if (poids > 3 && poids <= 5){
            nbcarton_entre_trois_et_cinq_kg = nbcarton_entre_trois_et_cinq_kg + 1;
        }else {
            nbcarton_superieur_a_cinq_kg =nbcarton_superieur_a_cinq_kg + 1; 
        }*/
                
      bureaux_charge[carton_dans_bureau] =  bureaux_charge[carton_dans_bureau] + 1;  
      println("Cartons dans le bureau" , "", carton_dans_bureau+1,": ", bureaux_charge[carton_dans_bureau]);
      println("");
      println("le camion contient" + " "+ nb_cartons_dans_camion + " " + "cartons");
        
    }

/*println("Nombre de cartons de moins de 1kg" + ": " + nbcarton_moins_un_kg);
println("Nombre de cartons compris entre 1 et 3kg" + ": " + nbcarton_entre_un_et_trois_kg);
println("Nombre de cartons compris entre 3 et 5kg" + ": " + nbcarton_entre_trois_et_cinq_kg);
println("Nombre de cartons de plus de 5kg" + ": " + nbcarton_superieur_a_cinq_kg);
println("");*/
println("Cartons restant dans la maison" + " " + cartons);
println("");
}
}
