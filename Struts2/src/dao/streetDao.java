package dao;

import java.util.List;

import entity.street;

public interface streetDao {
	/**
	 * �����ֵ�
	 * @param dis
	 */
	int insert(street dis);
	/**
	 * ����id��ѯ�ֵ���Ϣ
	 * @param id
	 * @return
	 */
	street selectById(Short id);
	/**
	 * ����idɾ���ֵ���Ϣ
	 * @param id
	 * @return
	 */
	int deleteById(Short id);
	/**
	 *  �޸Ľֵ���Ϣ
	 * @return
	 */
	int update(street id);
	/**
	 * ��ѯ���еĽֵ���Ϣ
	 * @return
	 */
	List<street> selectAll();
}
