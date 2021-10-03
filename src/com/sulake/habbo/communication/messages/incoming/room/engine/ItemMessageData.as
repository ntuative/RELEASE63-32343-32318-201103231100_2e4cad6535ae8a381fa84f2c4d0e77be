package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2689:Boolean = false;
      
      private var var_2688:int = 0;
      
      private var var_2690:int = 0;
      
      private var var_2369:int = 0;
      
      private var var_2366:int = 0;
      
      private var var_151:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_378:String = "";
      
      private var _type:int = 0;
      
      private var var_2899:String = "";
      
      private var var_1310:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_184:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2689 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_184 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2689;
      }
      
      public function get wallX() : Number
      {
         return this.var_2688;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_2688 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2690;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_2690 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2369;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_2369 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2366;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_2366 = param1;
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
      
      public function get dir() : String
      {
         return this.var_378;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_184)
         {
            this.var_378 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_184)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_184)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_184)
         {
            this._data = param1;
         }
      }
   }
}
