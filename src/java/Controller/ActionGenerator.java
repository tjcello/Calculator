package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ActionService;
import model.CalculatorService;


@WebServlet(name = "ActionGenerator", urlPatterns = {"/ActionGenerator"})
public class ActionGenerator extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String theCalc = request.getParameter("calculator");
            
            if (theCalc.equals("areaOfRectangle")){
               
            String length = request.getParameter("length");
            String width = request.getParameter("width");

            ActionService actSrv = new ActionService();
            String responseMsg = actSrv.calculateAreaOfRectangle(width, length);

            request.setAttribute("myRectangle", responseMsg);
            
            } else if (theCalc.equals("areaOfCircle")){
                String radius = request.getParameter("radius");
                ActionService actSrv = new ActionService();
            String responseMsg = actSrv.calculateAreaofCircle(radius);
            
            request.setAttribute("myCircle", responseMsg);
            
            } else if (theCalc.equals("areaOfTriangle")){
                String base = request.getParameter("base");
                String height = request.getParameter("height");
                ActionService actSrv = new ActionService();
                String responseMsg = actSrv.calculateAreaOfTriangle(base, height);
                
                request.setAttribute("myTriangle", responseMsg);
            }    

            
            RequestDispatcher view
                    = request.getRequestDispatcher("/Work.jsp");
            view.forward(request, response);
            

        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
