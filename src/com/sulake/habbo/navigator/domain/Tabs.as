package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_345:int = 1;
      
      public static const const_231:int = 2;
      
      public static const const_292:int = 3;
      
      public static const const_381:int = 4;
      
      public static const const_266:int = 5;
      
      public static const const_404:int = 1;
      
      public static const const_848:int = 2;
      
      public static const const_817:int = 3;
      
      public static const const_679:int = 4;
      
      public static const const_220:int = 5;
      
      public static const const_850:int = 6;
      
      public static const const_711:int = 7;
      
      public static const const_234:int = 8;
      
      public static const const_395:int = 9;
      
      public static const const_1944:int = 10;
      
      public static const const_804:int = 11;
      
      public static const const_530:int = 12;
       
      
      private var var_447:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_447 = new Array();
         this.var_447.push(new Tab(this._navigator,const_345,const_530,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_566));
         this.var_447.push(new Tab(this._navigator,const_231,const_404,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_566));
         this.var_447.push(new Tab(this._navigator,const_381,const_804,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1093));
         this.var_447.push(new Tab(this._navigator,const_292,const_220,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_566));
         this.var_447.push(new Tab(this._navigator,const_266,const_234,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_784));
         this.setSelectedTab(const_345);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_381;
      }
      
      public function get tabs() : Array
      {
         return this.var_447;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_447)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_447)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_447)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
