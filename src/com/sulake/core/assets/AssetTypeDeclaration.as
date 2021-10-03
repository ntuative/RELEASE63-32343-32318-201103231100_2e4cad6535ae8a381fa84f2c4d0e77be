package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2743:String;
      
      private var var_2744:Class;
      
      private var var_2742:Class;
      
      private var var_1957:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2743 = param1;
         this.var_2744 = param2;
         this.var_2742 = param3;
         if(rest == null)
         {
            this.var_1957 = new Array();
         }
         else
         {
            this.var_1957 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2743;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2744;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2742;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1957;
      }
   }
}
