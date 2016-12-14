package dao;

import java.util.List;

import entity.district;
import entity.users;

public interface usersDao {
	/**
	 * �����û�
	 * @param dis
	 */
	int insert(users user);
	/**
	 * ����id��ѯ�û���Ϣ
	 * @param id
	 * @return
	 */
	users selectById(Short id);
	/**
	 * ����id��ѯ�û���Ϣ
	 * @param id
	 * @return
	 */
	users selectByName(String name);
	/**
	 * ����idɾ���û���Ϣ
	 * @param id
	 * @return
	 */
	int deleteById(Short id);
	/**
	 *  �޸��û���Ϣ
	 * @return
	 */
	int update(users id);
	/**
	 * ��ѯ���е��û���Ϣ
	 * @return
	 */
	List<users> selectAll();
	/**
	 * ��ҳ
	 * @param pageSize ҳ���С
	 * @param pageIndex ҳ��
	 * @return
	 */
	List<users> selectPage(int pageSize,int pageIndex);
	/**
	 * ��¼
	 * @param id
	 * @return
	 */
	users selectByLogin(users user);
}
