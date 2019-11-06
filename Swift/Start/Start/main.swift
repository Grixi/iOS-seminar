
import Foundation

var pocetKol : Int = 0
for _ in 1...8 {

       
    let moznost1 : String = "xyxyxyxy"
    let moznost2 : String = "yxyxyxyx"
    
    pocetKol+=1;
    
    if (pocetKol % 2 == 0){
        print(moznost2)
    }
    if(pocetKol % 2 == 1){
        print(moznost1)
    }

}
