/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package librerias;

/**
 *
 * @author Keng
 */
public class herramientas {
    public herramientas(){
        
    }
    
    public static int parseInt(String valor){
        try  
        {  
          return Integer.parseInt(valor);  
        }  
        catch(NumberFormatException nfe)  
        {  
          return 0;  
        }  
    }
}
