package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1309:int = 3;
      
      private static const const_1336:int = 2;
      
      private static const const_1335:int = 1;
      
      private static const const_1337:int = 15;
       
      
      private var var_325:Array;
      
      private var var_1155:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_325 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1336)
         {
            this.var_325 = new Array();
            this.var_325.push(const_1335);
            this.var_1155 = const_1337;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1155 > 0)
         {
            --this.var_1155;
         }
         if(this.var_1155 == 0)
         {
            if(this.var_325.length > 0)
            {
               super.setAnimation(this.var_325.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
