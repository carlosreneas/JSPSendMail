package co.poker.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.poker.model.Mensaje;
import co.poker.utilidad.Utilidad;

/**
 * Servlet implementation class SendEmail
 */
@WebServlet({ "/SendEmail", "/EnviarEmail" })
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("<table><tr><th>Encabezado 1</th><th>Encabezado 2</th></tr></table>")
		.append("<tr><td>"+request.getContextPath()+"</td><td>ALgo</td></tr>")
		.append("</table>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String mensaje = request.getParameter("mensaje");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		
		Mensaje m = new Mensaje();
		m.setApellido(apellido);
		m.setNombre(nombre);
		m.setMensaje(mensaje);
		m.setTelefono(telefono);
		m.setEmail(email);
		
		
		Utilidad.enviarCorreo(m);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);

	}

}
