package beans;

public class Employes {

	private int idEmploye;
	private String nomEmploye;
	private String emailEmploye;
	private String dateNaissanceEmploye;
	private float salaireEmploye;
	private String mdpEmploye;
	private String cniEmploye;
	private int numT;
	
	public Employes() {
		super();
	}

	public Employes(int idEmploye, String nomEmploye, String emailEmploye, String dateNaissanceEmploye,
			float salaireEmploye, String mdpEmploye, String cniEmploye) {
		super();
		this.idEmploye = idEmploye;
		this.nomEmploye = nomEmploye;
		this.emailEmploye = emailEmploye;
		this.dateNaissanceEmploye = dateNaissanceEmploye;
		this.salaireEmploye = salaireEmploye;
		this.mdpEmploye = mdpEmploye;
		this.cniEmploye = cniEmploye;
	}

	public int getIdEmploye() {
		return idEmploye;
	}

	public void setIdEmploye(int idEmploye) {
		this.idEmploye = idEmploye;
	}

	public String getNomEmploye() {
		return nomEmploye;
	}

	public void setNomEmploye(String nomEmploye) {
		this.nomEmploye = nomEmploye;
	}

	public String getEmailEmploye() {
		return emailEmploye;
	}

	public void setEmailEmploye(String emailEmploye) {
		this.emailEmploye = emailEmploye;
	}

	public String getDateNaissanceEmploye() {
		return dateNaissanceEmploye;
	}

	public void setDateNaissanceEmploye(String dateNaissanceEmploye) {
		this.dateNaissanceEmploye = dateNaissanceEmploye;
	}

	public float getSalaireEmploye() {
		return salaireEmploye;
	}

	public void setSalaireEmploye(float salaireEmploye) {
		this.salaireEmploye = salaireEmploye;
	}

	public String getMdpEmploye() {
		return mdpEmploye;
	}

	public void setMdpEmploye(String mdpEmploye) {
		this.mdpEmploye = mdpEmploye;
	}

	public String getCniEmploye() {
		return cniEmploye;
	}

	public void setCniEmploye(String cniEmploye) {
		this.cniEmploye = cniEmploye;
	}

	public int getNumT() {
		return numT;
	}

	public void setNumT(int numT) {
		this.numT = numT;
	}

	
}
