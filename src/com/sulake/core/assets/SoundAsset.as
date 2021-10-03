package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_191:Sound = null;
      
      private var var_1567:AssetTypeDeclaration;
      
      private var var_1046:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1567 = param1;
         this.var_1046 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1046;
      }
      
      public function get content() : Object
      {
         return this.var_191 as Object;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1567;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_191 = null;
            this.var_1567 = null;
            this.var_1046 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(this.var_191)
            {
               this.var_191.close();
            }
            this.var_191 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(this.var_191)
            {
               this.var_191.close();
            }
            this.var_191 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(this.var_191)
            {
               this.var_191.close();
            }
            this.var_191 = SoundAsset(param1).var_191;
            return;
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            this.var_191 = SoundAsset(param1).var_191;
         }
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
