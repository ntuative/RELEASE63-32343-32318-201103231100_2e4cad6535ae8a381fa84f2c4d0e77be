package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1308:IHabboTracking;
      
      private var var_1477:Boolean = false;
      
      private var var_2749:int = 0;
      
      private var var_1963:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1308 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1308 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1477 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2749 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1477)
         {
            return;
         }
         ++this.var_1963;
         if(this.var_1963 <= this.var_2749)
         {
            this.var_1308.track("toolbar",param1);
         }
      }
   }
}
