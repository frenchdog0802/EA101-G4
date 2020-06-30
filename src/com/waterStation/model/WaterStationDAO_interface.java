package com.waterStation.model;

import java.util.List;


public interface WaterStationDAO_interface {
	public void insert(WaterStationVO wsVO);
	public void update(WaterStationVO wsVO);
	public void delete(String sqStationId);
	public WaterStationVO findByPrimaryKey(String sqStationId);
    public List<WaterStationVO> getAll();
}
