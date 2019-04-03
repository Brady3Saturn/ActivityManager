package dao;

import model.Activity;

public interface ActivityDao {
	
	public void addAct(Activity activity);
	
	public boolean getActByClass(int classes);
	
	public boolean getActByTime(int isLong);
	
	public boolean getActByOwner(int owner);
	
	public Activity getActById(int Id);
	
	// ĳ��Ķ�����+1
	public void updateTeamNum(int actId);
	
	// ���»����
	public void updateAct(Activity activity);
}
