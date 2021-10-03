package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_888:BigInteger;
      
      private var var_2342:BigInteger;
      
      private var var_1687:BigInteger;
      
      private var var_2343:BigInteger;
      
      private var var_1397:BigInteger;
      
      private var var_1686:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1397 = param1;
         this.var_1686 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1397.toString() + ",generator: " + this.var_1686.toString() + ",secret: " + param1);
         this.var_888 = new BigInteger();
         this.var_888.fromRadix(param1,param2);
         this.var_2342 = this.var_1686.modPow(this.var_888,this.var_1397);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1687 = new BigInteger();
         this.var_1687.fromRadix(param1,param2);
         this.var_2343 = this.var_1687.modPow(this.var_888,this.var_1397);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2342.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2343.toRadix(param1);
      }
   }
}
