package dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.hibernteUtil;
import dao.typesDao;
import entity.district;
import entity.types;

public class typesDaoImpl extends hibernteUtil implements typesDao {

	@Override
	public int insert(types dis) {
		Transaction tx = null;
		Session session = null;
		try {
			//��session
			session = currentSession();
			//��������
			tx = session.beginTransaction();
			session.save(dis);	
			//�ύ����
			//tx.commit();
			return 1;
		} catch (Exception e) {
			return -1;
		}finally{
			//�ر�session
			//closeSession();
		}
	}

	@Override
	public types selectById(Short id) {
		Session session = null;
		types dis = null;
		try {
			//��session
			session = currentSession();
			Query query = session.createQuery("from types as typ where typ.id = ?");
			query.setShort(0, id);
			/**
			 * ͨ��    uniqueResult  ��ȡֵ
			 */
			dis =(types)query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			//�ر�session
			//closeSession();
		}
		return dis;
	
		
		
//		Session session = null;
//		try {
//			//��session
//			session = currentSession();
//			types dis = (types)session.get(types.class, id);
//			return dis;
//		} catch (Exception e) {
//			return null;
//		}finally{
//			//�ر�session
//			//closeSession();
//		}
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
			types dis = (types)session.get(types.class, id);
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
	public int update(types typ) {
		Transaction tx = null;
		Session session = null;
		try {
			//��session
			session = currentSession();
			//��������
			tx = session.beginTransaction();
			session.merge(typ);
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
	public List<types> selectAll() {
		Session session = null;
		try {
			//��session
			session = currentSession();
			Query query = session.createQuery("FROM types");
			List<types> li = query.list();
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
