package com.bo;

import java.util.ArrayList;
import java.util.List;


/**
 * Encapsule l'état d'une partie de jeu
 * 
 * @author T.BOUDAA
 *
 */
public class GameState {

	private Utilisateur user;

	private boolean gameOver = false;

	private List<Message> messages = new ArrayList<Message>();

	public void reinit() {
		gameOver = false;
		messages = new ArrayList<Message>();
		user.setScore(0);
		user.setCompteurLancer(0);

	}

	public String toString() {
		return "Votre Score : " + user.getScore() + " | " + "Votre meilleur Score: " + user.getBestScore();
	}

	public void addMessage(Message ms) {
		messages.add(ms);
	}

	public GameState(Utilisateur user) {
		this.user = user;
	}

	public Utilisateur getUser() {
		return user;
	}

	public void setUser(Utilisateur user) {
		this.user = user;
	}

	public boolean isGameOver() {
		return gameOver;
	}

	public void setGameOver(boolean gameOver) {
		this.gameOver = gameOver;
	}

	public List<Message> getMessages() {
		return messages;
	}

	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}

}
