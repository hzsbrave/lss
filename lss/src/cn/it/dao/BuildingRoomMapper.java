package cn.it.dao;

import cn.it.entity.Building;
import cn.it.entity.BuildingRoom;
import cn.it.entity.BuildingRoomExample;
import cn.it.entity.Room;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BuildingRoomMapper {
    int countByExample(BuildingRoomExample example);

    int deleteByExample(BuildingRoomExample example);

    int deleteByPrimaryKey(Integer tbrId);

    int insert(BuildingRoom record);

    int insertSelective(BuildingRoom record);

    List<BuildingRoom> selectByExample(BuildingRoomExample example);

    BuildingRoom selectByPrimaryKey(Integer tbrId);

    int updateByExampleSelective(@Param("record") BuildingRoom record, @Param("example") BuildingRoomExample example);

    int updateByExample(@Param("record") BuildingRoom record, @Param("example") BuildingRoomExample example);

    int updateByPrimaryKeySelective(BuildingRoom record);

    int updateByPrimaryKey(BuildingRoom record);
    
    public BuildingRoom selectBuildingRoom(BuildingRoom buildingRoom);
    
    public List<Building> selectBuilding(Building building);
    
    public List<Room> selectRoomByBuilding(Integer buildingId);
    
}