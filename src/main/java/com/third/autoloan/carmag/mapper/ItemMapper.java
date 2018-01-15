package com.third.autoloan.carmag.mapper;

import java.util.List;

import com.third.autoloan.beans.ItemBean;

public interface ItemMapper {

	//根据车辆的id查询对应的物品 
	public List<ItemBean> getItemListByCarId(Long id);
}
