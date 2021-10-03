package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_378:int = 0;
      
      private var var_546:int = 0;
      
      private var var_675:int = 0;
      
      private var var_184:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_184 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_184)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_184)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_184)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_151;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_151 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_152;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_152 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_378;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_378 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_546;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_546 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_675;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_675 = param1;
         }
      }
   }
}
