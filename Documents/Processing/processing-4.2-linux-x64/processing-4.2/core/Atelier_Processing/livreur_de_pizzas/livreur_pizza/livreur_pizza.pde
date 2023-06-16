void setup (){
  int [] le_nb_de_pizza_dans_le_scooter = { 13, 11, 8, 7, 5, 3, 0};
  int prix_unitaire_pizza = 10;
  int frais_de_livraison = 3;
  int somme_totale = 0;
  
  for(int client = 0; client < le_nb_de_pizza_dans_le_scooter.length-1;client++){
    println(" ");
    println("livraison",client + 1,"-->", calcul_pizza_a_livrer(le_nb_de_pizza_dans_le_scooter [client] , le_nb_de_pizza_dans_le_scooter [client+1]), "pizzas");
    int nb_de_pizza_livree =  calcul_pizza_a_livrer ( le_nb_de_pizza_dans_le_scooter [client] , le_nb_de_pizza_dans_le_scooter [client+1]);
    println("La commande coûte -->",calcul_du_prix_de_la_commande( nb_de_pizza_livree, prix_unitaire_pizza,frais_de_livraison),"euros");
    somme_totale = somme_totale + calcul_du_prix_de_la_commande( nb_de_pizza_livree, prix_unitaire_pizza,frais_de_livraison); 
  }
  println(" ");
  println("somme totale des livraisons", somme_totale, "euros");
}

int calcul_pizza_a_livrer (int  le_nb_de_pizza_dans_le_scooter_au_depart, int le_nb_de_pizza_après_la_livraison){
  int calcul_du_nb_de_pizza_a_livrer = le_nb_de_pizza_dans_le_scooter_au_depart - le_nb_de_pizza_après_la_livraison;
  return calcul_du_nb_de_pizza_a_livrer;
}

int calcul_du_prix_de_la_commande (int le_nb_de_pizza, int le_prix_unitaire_pizza, int frais_de_livraison){
  int prix_de_la_commande = 0;
  if(le_nb_de_pizza < 3){
  prix_de_la_commande = le_nb_de_pizza * le_prix_unitaire_pizza + frais_de_livraison;
  }
  else{
  prix_de_la_commande = le_nb_de_pizza * le_prix_unitaire_pizza;
  }
  return prix_de_la_commande;
}



void draw(){
exit();
}
