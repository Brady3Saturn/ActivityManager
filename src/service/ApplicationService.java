package service;

import model.UserTeam;

public interface ApplicationService {
	
	// ����һ�������Ա
	public void addApplication(UserTeam userTeam);
	
	// ����ɹ���Ϊ��ʽ��Ա
	public void changeToRegular(UserTeam userTeam);
	
	// ���뱻�ܾ���
	public void changeToRefused(UserTeam userTeam);
	
	// �õ������б�
	public void getAppListByTeam(int teamId);
}
