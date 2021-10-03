package com.sulake.habbo.communication.messages.outgoing.facebook
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class FaceBookIsLoggedOnMessageComposer implements IMessageComposer
   {
       
      
      private var var_1868:String;
      
      public function FaceBookIsLoggedOnMessageComposer(param1:String)
      {
         super();
         this.var_1868 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1868];
      }
      
      public function dispose() : void
      {
         this.var_1868 = null;
      }
   }
}
