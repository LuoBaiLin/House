package dao;

import java.util.List;

import entity.district;

public interface districtDao {
	/**
	 * ��������
	 * @param dis
	 */
	int insert(district dis);
	/**
	 * ����id��ѯ������Ϣ
	 * @param id
	 * @return
	 */
	district selectById(Short id);
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
	int update(district id);
	/**
	 * ��ѯ���е�������Ϣ
	 * @return
	 */
	List<district> selectAll();
	/**
	 * ��ҳ
	 * @param pageSize ҳ���С
	 * @param pageIndex ҳ��
	 * @return
	 */
	List<district> selectPage(int pageSize,int pageIndex);
}
