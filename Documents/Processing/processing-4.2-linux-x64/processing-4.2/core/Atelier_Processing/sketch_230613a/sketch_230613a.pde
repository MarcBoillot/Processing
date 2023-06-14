void setup (){
  int personne_un = prix_du_billet(19);
  int personne_deux = prix_du_billet(13);
  int jour = prix_du_billet(mardi);
  println("Le prix du billet est de"+ " " +personne_un+" " + "euros");
  println("Le prix du billet est de"+ " "+personne_deux+ " " +"euros");
  println("La somme est de" + " "+ (personne_un+personne_deux)+ " " + "euros");
}
