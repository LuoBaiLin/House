package dao;

import java.util.List;

import entity.types;

public interface typesDao {
	/**
	 * ��������
	 * @param dis
	 */
	int insert(types dis);
	/**
	 * ����id��ѯ������Ϣ
	 * @param id
	 * @return
	 */
	types selectById(Short id);
	/**
	 * ����idɾ��������Ϣ
	 * @param id
	 * @return
	 */
	int deleteById(Short id);
	/**
	 *  �޸�������Ϣ
	 * @return
	 */
	int update(types typ);
	/**
	 * ��ѯ���е�������Ϣ
	 * @return
	 */
	List<types> selectAll();
}
