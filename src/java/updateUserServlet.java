/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.registry.JAXRException;
import javax.xml.registry.LifeCycleManager;
import javax.xml.registry.infomodel.Association;
import javax.xml.registry.infomodel.Classification;
import javax.xml.registry.infomodel.Concept;
import javax.xml.registry.infomodel.ExternalIdentifier;
import javax.xml.registry.infomodel.ExternalLink;
import javax.xml.registry.infomodel.InternationalString;
import javax.xml.registry.infomodel.Key;
import javax.xml.registry.infomodel.Organization;
import javax.xml.registry.infomodel.PersonName;
import javax.xml.registry.infomodel.Slot;
import javax.xml.registry.infomodel.User;

/**
 *
 * @author DELL
 */
@WebServlet(name = "updateUserServlet", urlPatterns = {"/updateUserServlet"})
public class updateUserServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateUserServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateUserServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       // processRequest(request, response);
   

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
       // processRequest(request, response);
        
                String ufname=request.getParameter("fname");
        String ulname=request.getParameter("lname");
        String udob=request.getParameter("dob");
        String ugender=request.getParameter("gender");
        String umobile=request.getParameter("mobile");
        String uemail=request.getParameter("email");
        String upass=request.getParameter("pass");
        String ucountry=request.getParameter("country");
        String ucity=request.getParameter("city");
        String uzip=request.getParameter("zip");
          
          User u=new User() {
                    @Override
                    public Organization getOrganization() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public PersonName getPersonName() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setPersonName(PersonName personName) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getPostalAddresses() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setPostalAddresses(Collection addresses) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public URL getUrl() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setUrl(URL url) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getTelephoneNumbers(String phoneType) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setTelephoneNumbers(Collection phoneNumbers) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getEmailAddresses() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setEmailAddresses(Collection emailAddresses) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public String getType() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setType(String type) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Key getKey() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public InternationalString getDescription() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setDescription(InternationalString description) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public InternationalString getName() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setName(InternationalString name) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setKey(Key key) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public String toXML() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addClassification(Classification classification) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addClassifications(Collection classifications) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeClassification(Classification classification) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeClassifications(Collection classifications) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setClassifications(Collection classifications) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getClassifications() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getAuditTrail() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addAssociation(Association association) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addAssociations(Collection associations) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeAssociation(Association association) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeAssociations(Collection associations) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setAssociations(Collection associations) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getAssociations() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getAssociatedObjects() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addExternalIdentifier(ExternalIdentifier externalIdentifier) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addExternalIdentifiers(Collection externalIdentifiers) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeExternalIdentifier(ExternalIdentifier externalIdentifier) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeExternalIdentifiers(Collection externalIdentifiers) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setExternalIdentifiers(Collection externalIdentifiers) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getExternalIdentifiers() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addExternalLink(ExternalLink externalLink) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addExternalLinks(Collection externalLinks) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeExternalLink(ExternalLink externalLink) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeExternalLinks(Collection externalLinks) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void setExternalLinks(Collection externalLinks) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getExternalLinks() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Concept getObjectType() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Organization getSubmittingOrganization() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getRegistryPackages() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public LifeCycleManager getLifeCycleManager() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addSlot(Slot slot) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void addSlots(Collection slots) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeSlot(String slotName) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public void removeSlots(Collection slotNames) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Slot getSlot(String slotName) throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }

                    @Override
                    public Collection getSlots() throws JAXRException {
                        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                    }
                };
          u.Update(ufname, ulname, udob, ugender, umobile, uemail,upass,ucountry,ucity,uzip);
    
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
