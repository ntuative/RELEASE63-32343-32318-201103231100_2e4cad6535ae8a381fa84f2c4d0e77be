package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_819:String = "";
      
      public static const const_365:int = 0;
      
      public static const const_486:int = 255;
      
      public static const const_803:Boolean = false;
      
      public static const const_509:int = 0;
      
      public static const const_584:int = 0;
      
      public static const const_374:int = 0;
      
      public static const const_1069:int = 1;
      
      public static const const_1129:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2292:String = "";
      
      private var var_1601:int = 0;
      
      private var var_2294:int = 255;
      
      private var var_2295:Boolean = false;
      
      private var var_2291:int = 0;
      
      private var var_2293:int = 0;
      
      private var var_2290:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2292 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2292;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1601 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1601;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2294;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2295 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2295;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2291 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2291;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2293 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2293;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2290 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2290;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
