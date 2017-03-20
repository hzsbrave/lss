package cn.it.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.it.dao.BuildingRoomMapper;
import cn.it.entity.Building;
import cn.it.entity.BuildingRoom;
import cn.it.entity.Room;
import cn.it.service.BuildingRoomService;
@Service
public class BuildingRoomServiceImpl implements BuildingRoomService{
	@Autowired
	private BuildingRoomMapper buildingRoomMapper;
	@Override
	public BuildingRoom selectBuildingRoom(BuildingRoom buildingRoom) {
		// TODO Auto-generated method stub
		return buildingRoomMapper.selectBuildingRoom(buildingRoom);
	}
	@Override
	public List<Building> selectBuilding(Building building) {
		// TODO Auto-generated method stub
		return buildingRoomMapper.selectBuilding(building);
	}
	@Override
	public List<Room> selectRoomByBuilding(Integer buildingId) {
		// TODO Auto-generated method stub
		return buildingRoomMapper.selectRoomByBuilding(buildingId);
	}

}
