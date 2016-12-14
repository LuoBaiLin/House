package dao;

import java.util.List;

import entity.district;
import entity.house;
import entity.houseTemp;
import entity.users;

public interface houseDao {
	/**
	 * ��������
	 * @param dis
	 */
	int insert(house dis);
	/**
	 * ����id��ѯ������Ϣ
	 * @param id
	 * @return
	 */
	house selectById(Long id);
	/**
	 * ����idɾ��������Ϣ
	 * @param id
	 * @return
	 */
	int deleteById(Long id);
	/**
	 *  �޸ķ�����Ϣ
	 * @return
	 */
	int update(house hous);
	/**
	 * ��ѯ���еķ�����Ϣ
	 * @return
	 */
	List<house> selectAll();
	/**
	 * ��ҳ
	 * @param pageSize ҳ���С
	 * @param pageIndex ҳ��
	 * @return
	 */
	List<house> selectPage(int pageSize,int pageIndex);
	/**
	 * ��ѯ�����������һ����
	 * @return
	 */
	List<house> selectMonth();
	/**
	 * �����û���ѯ������Ϣ
	 * @param users  �û� 
	 * @return
	 */
	List<house> selectByUId(users userss);
	/**
	 * ҳ��ѡ���ѯ
	 * @param houses
	 * @return
	 */
	List<house> selectByLike(houseTemp houses,int pageIndex);
	
	/**
	 * ҳ��ѡ�����ҳ��
	 * @param houses
	 * @return
	 */
	int pageCount(houseTemp houses);
}
