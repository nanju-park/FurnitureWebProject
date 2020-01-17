package com.funi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.funi.domain.FurnitureDTO;

public class BedDAO {
	
	private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		this.sessionTemplate = sessionTemplate;
	}
	
	//bed*************

	//ī�װ� ����Ʈ
	public List<FurnitureDTO> cateEImageList(HashMap<String,Object> bedMap){
		
		List<FurnitureDTO> Lists = sessionTemplate.selectList("bedMapper.CateimageList",bedMap);
		
		return Lists;
	}
	
	//ī�װ� �˻�&������
	public List<FurnitureDTO> cateSImageList(String cateEn, int start, int end, String searchValue){
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("cateEn", cateEn);
		params.put("start", start);
		params.put("end", end);
		params.put("searchValue", searchValue);
		
		List<FurnitureDTO> Lists = sessionTemplate.selectList("bedMapper.CateSimageList",params);
		
		return Lists;
	}
	
	//ħ�� ��ü ����Ʈ
	public List<FurnitureDTO> bedImageList(int start, int end, String searchValue) {
		//�˻�
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("start", start);
		params.put("end", end);
		params.put("searchValue", searchValue);
		
		List<FurnitureDTO> bLists = sessionTemplate.selectList("bedMapper.bedimageList", params);
		
		return bLists;
	}
	
	//total �˻�&������
	public int getDataCount(String searchValue) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("searchValue", searchValue);
		
		//mapper ��빮
		int result = sessionTemplate.selectOne("bedMapper.getDataCount", params);
		
		return result;
		
	}
	//ī�װ��� �˻�&������
	public int getCateDataCount(String cateEn, String searchValue) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("cateEn", cateEn);
		params.put("searchValue", searchValue);
		
		//mapper ��빮
		int result = sessionTemplate.selectOne("bedMapper.getCateDataCount", params);
		
		return result;
		
	}
	
	//ħ�� �̹��� �μ�Ʈ
	public void insertBedData(FurnitureDTO dto) {
		sessionTemplate.insert("bedMapper.insertData", dto);
	}
	
	
	//�����Ϻκ�
	public FurnitureDTO getReadData(int imageIndex, String cateEn) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("imageIndex", imageIndex);
		params.put("cateEn", cateEn);
		
		
		FurnitureDTO dto = sessionTemplate.selectOne("bedMapper.getReadData",params);
			
			System.out.println(dto.getImageIndex());
			System.out.println(dto.getSaveFileName());
			
			return dto;
		}
	

}
