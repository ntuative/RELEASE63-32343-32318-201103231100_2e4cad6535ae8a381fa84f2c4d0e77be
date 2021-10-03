package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2788:String;
      
      private var var_1994:String;
      
      private var var_2789:String;
      
      private var var_1995:Boolean;
      
      private var var_1996:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2788 = String(param1["set-type"]);
         this.var_1994 = String(param1["flipped-set-type"]);
         this.var_2789 = String(param1["remove-set-type"]);
         this.var_1995 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1996 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1996;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1996 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2788;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1994;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2789;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1995;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1995 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1994 = param1;
      }
   }
}
