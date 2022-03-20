package com.web.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.bo.GameState;
import com.bo.Message;
import com.bo.Utilisateur;
import com.web.helpers.GameContextManagement;
import com.web.helpers.IGameDataManagement;


public class GameServlet extends HttpServlet {

	public GameServlet() {

	}

	/**
	 * MÃ©thode permettant Ã  un utilisateur de jouer
	 * 
	 */
	protected void play(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// On rÃ©cupÃ©re la session de l'utilisateur en cours
		HttpSession session = request.getSession();

		// On rÃ©cupÃ©re de la session, les informations du joueur en cours
		Utilisateur user = (Utilisateur) session.getAttribute("user");

		// Pour gÃ©rer les donnÃ©es de l'application dans le ServletContext
		IGameDataManagement gameContext = (IGameDataManagement) getServletContext().getAttribute("gameData");

		// Cette objet dÃ©jÃ  insÃ©rÃ© dans la session au moment de login
		GameState gameSate = (GameState) session.getAttribute("gameState");

		List<Message> messages = new ArrayList<Message>();
		
		
		
		
		
		 if(user.getCompteurLancer() < 3) 
		 { 

			int de = Integer.parseInt(request.getParameter("numeroDe"));
			int resultat = new Random().nextInt(1, 7);
			System.out.println("resultat de de numéro "+ de+" est: " +resultat);
           user.incrementLance();

			
           
           
           
			if(de >= 1 && de <= 3)
			{
				if(session.getAttribute("old_de") != null)
				{
					if(session.getAttribute("old_old_de") == null)
					{
						
						
						// si un joueur lance un m�me d� plus qu�une foi
						if(((Integer) session.getAttribute("old_de")).intValue() == de)
						{
							user.setScore(-1);
							getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/scoreResult.jsp").forward(request, response);
							return;
						}
						else
						{
							session.setAttribute("old_old_de", session.getAttribute("old_de"));
							session.setAttribute("old_old_result", session.getAttribute("old_result"));
							session.setAttribute("old_de", de);
							session.setAttribute("old_result", resultat);
							
							// si on obtient 6 pour un de il ne sert � rien 
							//d�attendre les r�sultats des autres d�s
							if(((Integer) session.getAttribute("old_result")).intValue() == 6)
							{
								user.setScore(0);
								getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/scoreResult.jsp").forward(request, response);
								return;
							}
							// if our new result is smaller than the previous result 
							if(((Integer) session.getAttribute("old_old_result")).intValue() >= ((Integer) session.getAttribute("old_result")).intValue())
							{
								user.setScore(0);
								getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/scoreResult.jsp").forward(request, response);
								return;
							}
							getServletContext().getRequestDispatcher("/WEB-INF/vues/back/userHome.jsp").forward(request, response);
							
	
							return;
						}
					}
					
					
					// if(session.getAttribute("old_old_de") != null
					else
					{   
						// on verifie si on a lancer les memes des
						if(((Integer) session.getAttribute("old_de")).intValue() == de 
						|| ((Integer) session.getAttribute("old_old_de")).intValue() == de )
						{
							user.setScore(-1);
							getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/scoreResult.jsp").forward(request, response);
							return;
						}
						else
						{   
							
							if(((Integer) session.getAttribute("old_result")).intValue() >= resultat)
							{
								user.setScore(0);
								getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/scoreResult.jsp").forward(request, response);
								return;
							}
							
							
							
							// if  r�sultat (d� 1) < r�sultat (d� 2) < r�sultat (d� 3)
							else
							{
								user.setScore(resultat + ((Integer) session.getAttribute("old_result")).intValue() + ((Integer) session.getAttribute("old_old_result")).intValue());
								
								//calcul de score
								if (user.getCompteurLancer() == 3) 
								{
									if (!gameSate.isGameOver()) 
									{
										// On ajoute un message d'information
										//gameSate.addMessage(new Message("Game Over", Message.INFO));

										// On vérifie s'il faut mettre à jour le meilleur score pour ce joueur
										if (user.getScore() > user.getBestScore()) 
										{
											// Si oui alors mise à jour des données dans la session
											user.setBestScore(user.getScore());

				
											gameContext.updateScore(user);
										}

									}

									
									gameSate.setGameOver(true);
									getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/scoreResult.jsp").forward(request, response);

									// On arrete l'execution
									return;

								}
								//getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/FinPartie.jsp").forward(request, response);
							}
							
						}
					}
	
				}
				else
				{
					session.setAttribute("old_de", de);
					session.setAttribute("old_result", resultat);
					
					if(resultat == 6 || resultat == 5)
					{
						user.setScore(0);
						getServletContext().getRequestDispatcher("/WEB-INF/vues/pages/scoreResult.jsp").forward(request, response);
						return;
					}
					getServletContext().getRequestDispatcher("/WEB-INF/vues/back/userHome.jsp").forward(request, response);
					return;
				}
			}
			
			
			
			
			
			
			
			
			//Si le numero entree nest pas dans lintervalle [1,3]
			else
			{
				
				messages.add(new Message("this number is not allowed!! ", Message.ERROR));
				request.setAttribute("messages", messages);
				gameSate.reinit();
				getServletContext().getRequestDispatcher("/WEB-INF/vues/back/userHome.jsp").forward(request, response);
				return;
			}

		}


	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		play(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		play(request, response);

	}

}
