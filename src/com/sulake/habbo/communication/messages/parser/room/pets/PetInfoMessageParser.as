package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1870:int;
      
      private var _name:String;
      
      private var var_1349:int;
      
      private var var_2671:int;
      
      private var var_2184:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_606:String;
      
      private var var_2670:int;
      
      private var var_2669:int;
      
      private var var_2672:int;
      
      private var var_2424:int;
      
      private var var_2300:int;
      
      private var _ownerName:String;
      
      private var var_505:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1870;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1349;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2671;
      }
      
      public function get experience() : int
      {
         return this.var_2184;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_606;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2670;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2669;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2672;
      }
      
      public function get respect() : int
      {
         return this.var_2424;
      }
      
      public function get ownerId() : int
      {
         return this.var_2300;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_505;
      }
      
      public function flush() : Boolean
      {
         this.var_1870 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1870 = param1.readInteger();
         this._name = param1.readString();
         this.var_1349 = param1.readInteger();
         this.var_2671 = param1.readInteger();
         this.var_2184 = param1.readInteger();
         this.var_2670 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2669 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2672 = param1.readInteger();
         this.var_606 = param1.readString();
         this.var_2424 = param1.readInteger();
         this.var_2300 = param1.readInteger();
         this.var_505 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
