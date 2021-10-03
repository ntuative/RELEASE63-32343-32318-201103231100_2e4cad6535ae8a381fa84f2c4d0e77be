package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_946:int = 20;
      
      private static const const_620:int = 10;
      
      private static const const_1310:int = 31;
      
      private static const const_1309:int = 32;
      
      private static const const_619:int = 30;
       
      
      private var var_325:Array;
      
      private var var_746:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_325 = new Array();
         super();
         super.setAnimation(const_619);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_746)
            {
               this.var_746 = true;
               this.var_325 = new Array();
               this.var_325.push(const_1310);
               this.var_325.push(const_1309);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_620)
         {
            if(this.var_746)
            {
               this.var_746 = false;
               this.var_325 = new Array();
               if(direction == 2)
               {
                  this.var_325.push(const_946 + 5 - param1);
                  this.var_325.push(const_620 + 5 - param1);
               }
               else
               {
                  this.var_325.push(const_946 + param1);
                  this.var_325.push(const_620 + param1);
               }
               this.var_325.push(const_619);
               return;
            }
            super.setAnimation(const_619);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
