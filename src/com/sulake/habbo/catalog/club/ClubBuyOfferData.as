package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1679:String;
      
      private var var_1680:int;
      
      private var var_2331:Boolean;
      
      private var var_2329:Boolean;
      
      private var var_2325:int;
      
      private var var_2327:int;
      
      private var var_450:ICatalogPage;
      
      private var var_2330:int;
      
      private var var_2326:int;
      
      private var var_2328:int;
      
      private var var_2324:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1679 = param2;
         this.var_1680 = param3;
         this.var_2331 = param4;
         this.var_2329 = param5;
         this.var_2325 = param6;
         this.var_2327 = param7;
         this.var_2330 = param8;
         this.var_2326 = param9;
         this.var_2328 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1679;
      }
      
      public function get price() : int
      {
         return this.var_1680;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2331;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2329;
      }
      
      public function get periods() : int
      {
         return this.var_2325;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2327;
      }
      
      public function get year() : int
      {
         return this.var_2330;
      }
      
      public function get month() : int
      {
         return this.var_2326;
      }
      
      public function get day() : int
      {
         return this.var_2328;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_202;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1680;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_450;
      }
      
      public function get priceType() : String
      {
         return Offer.const_811;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1679;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_450 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2324;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2324 = param1;
      }
   }
}
