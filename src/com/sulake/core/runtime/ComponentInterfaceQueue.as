package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1662:IID;
      
      private var var_745:Boolean;
      
      private var var_1113:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1662 = param1;
         this.var_1113 = new Array();
         this.var_745 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1662;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_745;
      }
      
      public function get receivers() : Array
      {
         return this.var_1113;
      }
      
      public function dispose() : void
      {
         if(!this.var_745)
         {
            this.var_745 = true;
            this.var_1662 = null;
            while(this.var_1113.length > 0)
            {
               this.var_1113.pop();
            }
            this.var_1113 = null;
         }
      }
   }
}
