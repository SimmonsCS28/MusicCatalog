package service;

import java.io.IOException;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class FormHandler
 */
@WebServlet("/FormHandler")
public class FormHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FormHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// write an if statement that calls a separate method for each button's
		// servlet request

		if (request.getParameter("songSubmit") != null) {
			
			

			String name = request.getParameter("songTitle");
			String artist = request.getParameter("artistName");
			String album = request.getParameter("albumName");
			String year = request.getParameter("songYear");
			String genre = request.getParameter("genre");

			SongService.save(year, name, artist, album, genre);
			String nextJSP = "/index.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
			dispatcher.forward(request,response);
			
		}
		else if (request.getParameter("retrieveSong") != null){
			String input = request.getParameter("searchInput");
			try {
				ArrayList <Object> songInfo = SongService.catalogSearch(input);
				request.setAttribute("songInfo", songInfo);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/search.jsp");
				rd.forward(request, response);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
	}

}
