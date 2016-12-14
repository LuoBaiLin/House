package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.districtDao;
import dao.hibernteUtil;
import entity.district;

public class districtDaoImpl extends hibernteUtil implements districtDao {
	@Override
	public int insert(district dis) {
		Transaction tx = null;
		Session session = null;
		try {
			//��session
			session = currentSession();
			//��������
			tx = session.beginTransaction();
			session.save(dis);	
			//�ύ����
			tx.commit();
			return 1;
		} catch (Exception e) {
			return -1;
		}finally{
			//�ر�session
			//closeSession();
		}
	}
	@Override
	public district selectById(Short id) {
		Session session = null;
		district dis = null;
		try {
			//��session
			session = currentSession();
			Query query = session.createQuery("from district as dis where dis.id = ?");
			//query.setParameter(0, id);          //�����κ����͵Ĳ���
			query.setShort(0, id);
			
			//Query query = session.createQuery("from district as dis where dis.id = :id");
			//query.setShort("id", id);           //�������ư�
			//query.setParameter("id", id);          //�����κ����͵Ĳ���
			
			/**
			 * ͨ��������ȡֵ
			 */
//			Iterator<district> it = query.iterate();
//			while (it.hasNext()) {
//				dis = it.next();
//			}
			
			/**
			 * ͨ��    uniqueResult  ��ȡֵ
			 */
			dis =(district)query.uniqueResult();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			//�ر�session
			//closeSession();
		}
		return dis;
	
	}
	@Override
	public int deleteById(Short id) {
		Transaction tx = null;
		Session session = null;
		try {
			//��session
			session = currentSession();
			//��������
			tx = session.beginTransaction();
			district dis = (district)session.get(district.class, id);
			session.delete(dis);
			//�ύ����
			//tx.commit();
			return 1;
		} catch (Exception e) {
			tx.rollback();
			return -1;
		}finally{
			//�ر�session
			//closeSession();
		}
	}

	@Override
	public int update(district dis) {
		Transaction tx = null;
		Session session = null;
		try {
			//��session
			session = currentSession();
			//��������
			tx = session.beginTransaction();
			session.merge(dis);
			//�ύ����
			//tx.commit();
			return 1;
		} catch (Exception e) {
			tx.rollback();
			return -1;
		}finally{
			//�ر�session
			//closeSession();
		}
	}
	@Override
	public List<district> selectAll() {
		Session session = null;
		try {
			//��session
			session = currentSession();
			Query query = session.createQuery("FROM district");

			List<district> li = query.list();
			return li;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			//�ر�session
			//closeSession();
		}
	}
	@Override
	public List<district> selectPage(int pageSize,int pageIndex) {
		Session session = null;
		try {
			//��session
			session = currentSession();
			Query query = session.createQuery("FROM district order by id");
			//�������ҳ��
			query.setMaxResults(pageSize);
			//���� �ӵڼ�����ʼ���  ����������
			query.setFirstResult((pageIndex-1)*pageSize);
			List<district> li = query.list();
			return li;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			//�ر�session
			//closeSession();
		}
	}
	
}
