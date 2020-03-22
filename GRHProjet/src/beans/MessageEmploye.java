package beans;

public class MessageEmploye {

	private int idMessage;
	private String message;
	private String nomEmploye;
	private String sujetMessage;
	
	public MessageEmploye() {
		super();
	}
	public MessageEmploye(int idMessage, String message) {
		super();
		this.idMessage = idMessage;
		
		this.message = message;
	}
	public int getIdMessage() {
		return idMessage;
	}
	public void setIdMessage(int idMessage) {
		this.idMessage = idMessage;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getNomEmploye() {
		return nomEmploye;
	}
	public void setNomEmploye(String nomEmploye) {
		this.nomEmploye = nomEmploye;
	}
	public String getSujetMessage() {
		return sujetMessage;
	}
	public void setSujetMessage(String sujetMessage) {
		this.sujetMessage = sujetMessage;
	}
	
	
	
}
