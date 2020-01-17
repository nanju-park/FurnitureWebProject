package com.funi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.funi.domain.FurnitureDTO;

public class LivingDAO {
	
	private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		this.sessionTemplate = sessionTemplate;
	}
	
	//living*************
	
	//ī�װ� ����Ʈ
	public List<FurnitureDTO> cateEImageList(HashMap<String,Object> livingMap) {
		
		List<FurnitureDTO> Lists = sessionTemplate.selectList("livingMapper.CateimageList", livingMap);
		
		return Lists;
	}
	
	//ī�װ� �˻�&������
	public List<FurnitureDTO> cateSImageList(String cateEn, int start, int end, String searchValue){
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("cateEn", cateEn);
		params.put("start", start);
		params.put("end", end);
		params.put("searchValue", searchValue);
		
		List<FurnitureDTO> Lists = sessionTemplate.selectList("livingMapper.CateSimageList",params);
		
		return Lists;
	}
	
	//����¡ ó�� ���� �κ�
	public int getDataCount(String searchValue) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("searchValue", searchValue);
		
		//mapper ��빮
		int result = sessionTemplate.selectOne("livingMapper.getDataCount", params);
		
		return result;
		
		
	}
	
	//ī�װ��� �˻�&������
	public int getCateDataCount(String cateEn, String searchValue) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("cateEn", cateEn);
		params.put("searchValue", searchValue);
		
		//mapper ��빮
		int result = sessionTemplate.selectOne("livingMapper.getCateDataCount", params);
		
		return result;
		
	}
	
	//�Ž� ��ü ����Ʈ
	public List<FurnitureDTO> livingImageList(int start, int end, String searchValue) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("start", start);
		params.put("end", end);
		params.put("searchValue", searchValue);
		
		List<FurnitureDTO> Lists = sessionTemplate.selectList("livingMapper.livingimageList", params);
		
		return Lists;
	}
	
	//�Ž� �̹��� �μ�Ʈ
	public void insertlivingData(FurnitureDTO dto) {
		sessionTemplate.insert("livingMapper.insertData", dto);
	}
	
	//�� ���� ������
	//getReadData
	public FurnitureDTO getReadData(int imageIndex, String cateEn) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("imageIndex", imageIndex);
		params.put("cateEn", cateEn);
		
		
		FurnitureDTO dto = sessionTemplate.selectOne("livingMapper.getReadData",params);
		
		System.out.println(dto.getImageIndex());
		System.out.println(dto.getSaveFileName());
		
		return dto;
	}
	
	

}
