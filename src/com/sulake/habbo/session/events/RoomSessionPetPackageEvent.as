package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_489:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_558:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_356:int = -1;
      
      private var var_1250:int = -1;
      
      private var var_1721:int = -1;
      
      private var _color:String = "";
      
      private var var_2012:int = 0;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param8,param9);
         this.var_356 = param3;
         this.var_1250 = param4;
         this.var_1721 = param5;
         this._color = param6;
         this.var_2012 = param7;
      }
      
      public function get objectId() : int
      {
         return this.var_356;
      }
      
      public function get petType() : int
      {
         return this.var_1250;
      }
      
      public function get breed() : int
      {
         return this.var_1721;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2012;
      }
   }
}
