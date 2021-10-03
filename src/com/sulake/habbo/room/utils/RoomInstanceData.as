package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_710:TileHeightMap = null;
      
      private var var_1082:LegacyWallGeometry = null;
      
      private var var_1081:RoomCamera = null;
      
      private var var_709:SelectedRoomObjectData = null;
      
      private var var_711:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_481:Map;
      
      private var var_482:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_481 = new Map();
         this.var_482 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1082 = new LegacyWallGeometry();
         this.var_1081 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_710;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_710 != null)
         {
            this.var_710.dispose();
         }
         this.var_710 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1082;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1081;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_709;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_709 != null)
         {
            this.var_709.dispose();
         }
         this.var_709 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_711;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_711 != null)
         {
            this.var_711.dispose();
         }
         this.var_711 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_710 != null)
         {
            this.var_710.dispose();
            this.var_710 = null;
         }
         if(this.var_1082 != null)
         {
            this.var_1082.dispose();
            this.var_1082 = null;
         }
         if(this.var_1081 != null)
         {
            this.var_1081.dispose();
            this.var_1081 = null;
         }
         if(this.var_709 != null)
         {
            this.var_709.dispose();
            this.var_709 = null;
         }
         if(this.var_711 != null)
         {
            this.var_711.dispose();
            this.var_711 = null;
         }
         if(this.var_481 != null)
         {
            this.var_481.dispose();
            this.var_481 = null;
         }
         if(this.var_482 != null)
         {
            this.var_482.dispose();
            this.var_482 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_481.remove(param1.id);
            this.var_481.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_481.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_481.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_481.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_482.remove(param1.id);
            this.var_482.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_482.length > 0)
         {
            return this.getWallItemDataWithId(this.var_482.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_482.remove(param1);
      }
   }
}
