package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var var_2693:String = "";
      
      private var var_92:Vector3d = null;
      
      private var var_378:Vector3d = null;
      
      private var var_2142:int = 0;
      
      private var var_2694:String = null;
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         this._id = param1;
         this._category = param2;
         this.var_2693 = param3;
         this.var_92 = new Vector3d();
         this.var_92.assign(param4);
         this.var_378 = new Vector3d();
         this.var_378.assign(param5);
         this.var_2142 = param6;
         this.var_2694 = param7;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get operation() : String
      {
         return this.var_2693;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_92;
      }
      
      public function get dir() : Vector3d
      {
         return this.var_378;
      }
      
      public function get typeId() : int
      {
         return this.var_2142;
      }
      
      public function get instanceData() : String
      {
         return this.var_2694;
      }
      
      public function dispose() : void
      {
         this.var_92 = null;
         this.var_378 = null;
      }
   }
}
