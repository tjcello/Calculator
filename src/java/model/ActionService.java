/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Thomas
 */
public class ActionService {

    public String calculateAreaOfRectangle(String width, String length) {
        double w = Double.parseDouble(width);
        double l = Double.parseDouble(length);
        double a = l * w;
        String area = String.valueOf(a);

        return area;

    }

    public String calculateAreaofCircle(String radius) {
        double r = Double.parseDouble(radius);
        double a = (int) (Math.PI * Math.pow(r, 2) * 100) / 100.0;
        String area = String.valueOf(a);
        
        return area;
    }
    
    public String calculateAreaOfTriangle(String base, String height){
        double b = Double.parseDouble(base);
        double h = Double.parseDouble(height);
        double a = .5 * b * h;
        String area = String.valueOf(a);
        
        return area;
    }

    

    
}
