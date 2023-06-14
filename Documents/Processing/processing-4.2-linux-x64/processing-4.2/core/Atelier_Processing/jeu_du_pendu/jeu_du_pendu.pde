 //<>//


void setup (){
  char la_lettre_a_deviner = 'c';
  char lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,
  "Tapez une lettre ?").charAt(0);

   while(la_lettre_a_deviner != lettreUtilisateur){
       lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,
        "Tapez une lettre ?").charAt(0);
     }
     
       println ("la lettre entrée est " + " " + lettreUtilisateur);
       println("bravo vous avez deviner"); 
     
     
 }
 
 void draw (){
 exit();
 }
