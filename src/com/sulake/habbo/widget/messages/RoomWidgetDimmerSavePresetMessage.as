package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_727:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2400:int;
      
      private var var_2402:int;
      
      private var _color:uint;
      
      private var var_1244:int;
      
      private var var_2401:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_727);
         this.var_2400 = param1;
         this.var_2402 = param2;
         this._color = param3;
         this.var_1244 = param4;
         this.var_2401 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2400;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2402;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1244;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2401;
      }
   }
}
