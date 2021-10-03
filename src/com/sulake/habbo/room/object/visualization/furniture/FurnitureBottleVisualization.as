package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_946:int = 20;
      
      private static const const_620:int = 9;
      
      private static const const_1309:int = -1;
       
      
      private var var_325:Array;
      
      private var var_746:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_325 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_746)
            {
               this.var_746 = true;
               this.var_325 = new Array();
               this.var_325.push(const_1309);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_746)
            {
               this.var_746 = false;
               this.var_325 = new Array();
               this.var_325.push(const_946);
               this.var_325.push(const_620 + param1);
               this.var_325.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
