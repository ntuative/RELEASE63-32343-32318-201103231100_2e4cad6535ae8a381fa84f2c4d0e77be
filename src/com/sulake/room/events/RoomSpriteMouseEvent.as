package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1628:String = "";
      
      private var var_1732:String = "";
      
      private var var_2370:String = "";
      
      private var var_2367:Number = 0;
      
      private var var_2368:Number = 0;
      
      private var var_2369:Number = 0;
      
      private var var_2366:Number = 0;
      
      private var var_2347:Boolean = false;
      
      private var var_2346:Boolean = false;
      
      private var var_2349:Boolean = false;
      
      private var var_2348:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1628 = param2;
         this.var_1732 = param3;
         this.var_2370 = param4;
         this.var_2367 = param5;
         this.var_2368 = param6;
         this.var_2369 = param7;
         this.var_2366 = param8;
         this.var_2347 = param9;
         this.var_2346 = param10;
         this.var_2349 = param11;
         this.var_2348 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1628;
      }
      
      public function get canvasId() : String
      {
         return this.var_1732;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2370;
      }
      
      public function get screenX() : Number
      {
         return this.var_2367;
      }
      
      public function get screenY() : Number
      {
         return this.var_2368;
      }
      
      public function get localX() : Number
      {
         return this.var_2369;
      }
      
      public function get localY() : Number
      {
         return this.var_2366;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2347;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2346;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2349;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2348;
      }
   }
}
