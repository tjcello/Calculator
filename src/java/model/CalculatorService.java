package model;


public class CalculatorService {
    
    public String calculateAreaOfRectangle(String width, String length){
     double w = Double.parseDouble(width);
     double l = Double.parseDouble(length);
     double a = l * w;
     String area = "" + a;
     
     return area;
     
     
    }
}
