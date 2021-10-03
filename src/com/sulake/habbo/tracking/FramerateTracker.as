package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1935:int;
      
      private var var_2795:int;
      
      private var var_722:int;
      
      private var var_539:Number;
      
      private var var_2797:Boolean;
      
      private var var_2796:int;
      
      private var var_1999:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2795 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2796 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2797 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_722;
         if(this.var_722 == 1)
         {
            this.var_539 = param1;
            this.var_1935 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_722);
            this.var_539 = this.var_539 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2797 && param3 - this.var_1935 >= this.var_2795 && this.var_1999 < this.var_2796)
         {
            _loc5_ = 1000 / this.var_539;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1999;
            this.var_1935 = param3;
            this.var_722 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
