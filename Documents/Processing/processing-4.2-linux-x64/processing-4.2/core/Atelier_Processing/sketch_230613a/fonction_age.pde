int prix_du_billet (int age){
  int prix_du_billet = 100; //<>//
  
 
 if (age < 8){
   prix_du_billet =prix_du_billet-( prix_du_billet*50/100);
         
 }
 else if (age < 16) {
    prix_du_billet = prix_du_billet-(prix_du_billet*45/100);  
   
 }
 else if(age < 18){
     prix_du_billet = prix_du_billet-(prix_du_billet*40/100);
    
       
 }
     
 else if (age > 65 ){
       prix_du_billet =prix_du_billet -(prix_du_billet*30/100);
       
       
     }
            

    return prix_du_billet;
} 
