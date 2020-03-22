package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import beans.MessageEmploye;

public class IMessageEmployeImpl implements IMessageEmployeDao {

	@Override
	public void EnvoyerMessage(MessageEmploye messageClient) {
		Connection connexion = DAOFACTORY.getConnection() ; 
        PreparedStatement ps = null;

		try {
            ps = connexion.prepareStatement(
            		"INSERT INTO messageEmploye(nomEmploye,message,sujetMessage) VALUES(?,?,?);");
            
            
            ps.setString(1, messageClient.getNomEmploye());
            ps.setString(2, messageClient.getMessage());
            ps.setString(3, messageClient.getSujetMessage());
            
           
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

	@Override
	public List<MessageEmploye> ListeMessages() {
		List<MessageEmploye> messages = new ArrayList<MessageEmploye>() ; 
		Connection conn = DAOFACTORY.getConnection() ; 
		try {
			PreparedStatement ps = conn.prepareStatement(
			           "select * from messageEmploye  ; ");
			ResultSet rs = ps.executeQuery() ; 
			while(rs.next()) {
				MessageEmploye  M = new MessageEmploye();
				M.setIdMessage(rs.getInt("idMessage"));
				M.setNomEmploye(rs.getString("nomEmploye"));
				M.setMessage(rs.getString("message"));
				M.setSujetMessage(rs.getString("sujetMessage"));
				messages.add(M) ; 
			}
			ps.close(); 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return messages;
	}

	@Override
	public void supprimerMessage(int id) {
		Connection conn = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(
               "delete from messageEmploye where idMessage = ?");
			ps.setInt(1, id);
			ps.executeUpdate() ;

			ps.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}		
	}

	@Override
	public MessageEmploye get_Message(int idMessage) {
		MessageEmploye M = null ; 
		Connection conn = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement( 
					" select idMessage, nomEmploye, message from messageEmploye where idMessage=? ");
			ps.setInt(1, idMessage);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				M  = new MessageEmploye();
				M.setIdMessage(Integer.parseInt(rs.getString("idMessage")));
				M.setNomEmploye(rs.getString("nomEmploye"));
				M.setMessage(rs.getString("message"));
				
			}
				ps.close(); 	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return M;
	}

}
