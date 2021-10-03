package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2400:int;
      
      private var var_2402:int;
      
      private var var_2559:String;
      
      private var var_2560:int;
      
      private var var_2558:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2400 = param1;
         this.var_2402 = param2;
         this.var_2559 = param3;
         this.var_2560 = param4;
         this.var_2558 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2400,this.var_2402,this.var_2559,this.var_2560,int(this.var_2558)];
      }
      
      public function dispose() : void
      {
      }
   }
}
