package model;

public class UserTeam {
	private int Id;
	private int user;
	private int team;
	private int regular;//0Ϊ�������г�Ա��1Ϊ��ʽ��Ա��2Ϊ���ܾ���Ա
	
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public int getTeam() {
		return team;
	}
	public void setTeam(int team) {
		this.team = team;
	}
	public int getRegular() {
		return regular;
	}
	public void setRegular(int regular) {
		this.regular = regular;
	}
}
