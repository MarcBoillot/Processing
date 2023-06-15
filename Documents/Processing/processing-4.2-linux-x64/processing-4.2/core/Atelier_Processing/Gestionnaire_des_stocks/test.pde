void setup (){
int [] qte_produits_commandés = { 45, 12 , 78 , 96 , 65, 4 };
int [] qte_produits_déjà_livrés = { 40, 0 , 8 , 6 , 65, 1 };
int [] qte_a_livrer = new int [6];
int [] qte_produits_en_stock = { 15, 6 , 20 , 50 , 100, 0 };

  for (int i = 0; i < qte_produits_commandés.length; i++){
  println("quantité commandée -->"," ",qte_produits_commandés[i]," ", "quantité restante a livrer -->"," ",qte_a_livrer(qte_produits_commandés, qte_produits_déjà_livrés,i)," ","qte en stock -->",qte_produits_en_stock[i]);
  qte_a_livrer [i] = qte_a_livrer(qte_produits_commandés, qte_produits_déjà_livrés,i);
  println("livrable-->",qte_livrable(qte_a_livrer, qte_produits_en_stock,i));
}


  
}
int qte_livrable (int [] qte_en_stock, int [] qte_a_livrees, int i){
 int difference_entre_les_qte_stock_et_a_livrer = qte_en_stock [i] - qte_a_livrees[i];
 if(difference_entre_les_qte_stock_et_a_livrer <= 0){
   difference_entre_les_qte_stock_et_a_livrer =  qte_en_stock[i];
 }else{
   difference_entre_les_qte_stock_et_a_livrer = qte_a_livrees [i];
 }
 return difference_entre_les_qte_stock_et_a_livrer ;
}

int qte_a_livrer (int [] qte_commandees, int [] qte_livrees, int i){
 int difference_entre_commande_et_livre =  qte_commandees [i] - qte_livrees[i];
 
 if (difference_entre_commande_et_livre == 0){
  difference_entre_commande_et_livre = 0; 
 }
 return difference_entre_commande_et_livre; 
}

void draw(){
exit();
}
