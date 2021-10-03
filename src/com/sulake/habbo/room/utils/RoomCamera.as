package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_925:int = 3;
       
      
      private var var_2122:int = -1;
      
      private var var_2120:int = -2;
      
      private var var_336:Vector3d = null;
      
      private var var_403:Vector3d = null;
      
      private var var_1572:Vector3d;
      
      private var var_2121:Boolean = false;
      
      private var _limitedLocY:Boolean = false;
      
      private var var_2117:Boolean = false;
      
      private var var_2119:Boolean = false;
      
      private var var_2116:int = 0;
      
      private var var_2115:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2118:int = 0;
      
      private var var_2123:int = 0;
      
      private var var_1672:int = -1;
      
      private var var_1312:int = 0;
      
      public function RoomCamera()
      {
         this.var_1572 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_403;
      }
      
      public function get targetId() : int
      {
         return this.var_2122;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2120;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1572;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2121;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this._limitedLocY;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2117;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2119;
      }
      
      public function get screenWd() : int
      {
         return this.var_2116;
      }
      
      public function get screenHt() : int
      {
         return this.var_2115;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2118;
      }
      
      public function get roomHt() : int
      {
         return this.var_2123;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1672;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2122 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1572.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2120 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2121 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this._limitedLocY = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2117 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2119 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2116 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2115 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         this._scale = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2118 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2123 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1672 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_336 == null)
         {
            this.var_336 = new Vector3d();
         }
         if(this.var_336.x != param1.x || this.var_336.y != param1.y || this.var_336.z != param1.z)
         {
            this.var_336.assign(param1);
            this.var_1312 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_336 = null;
         this.var_403 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_403 != null)
         {
            return;
         }
         this.var_403 = new Vector3d();
         this.var_403.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_336 != null && this.var_403 != null)
         {
            ++this.var_1312;
            _loc4_ = Vector3d.dif(this.var_336,this.var_403);
            if(_loc4_.length <= param2)
            {
               this.var_403 = this.var_336;
               this.var_336 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_925 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1312 <= const_925)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_403 = Vector3d.sum(this.var_403,_loc4_);
            }
         }
      }
   }
}
