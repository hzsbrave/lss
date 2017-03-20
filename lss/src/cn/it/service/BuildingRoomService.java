package cn.it.service;

import java.util.List;

import cn.it.entity.Building;
import cn.it.entity.BuildingRoom;
import cn.it.entity.Room;

public interface BuildingRoomService {
	public BuildingRoom selectBuildingRoom(BuildingRoom buildingRoom);
	public List<Building> selectBuilding(Building building);
    public List<Room> selectRoomByBuilding(Integer buildingId);
}
