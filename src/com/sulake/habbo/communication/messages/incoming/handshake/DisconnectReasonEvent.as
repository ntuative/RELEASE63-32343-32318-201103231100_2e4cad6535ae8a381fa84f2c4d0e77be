package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1908:int = 0;
      
      public static const const_1527:int = 1;
      
      public static const const_1601:int = 2;
      
      public static const const_1986:int = 3;
      
      public static const const_1995:int = 4;
      
      public static const const_1875:int = 5;
      
      public static const const_1459:int = 10;
      
      public static const const_1994:int = 11;
      
      public static const const_1937:int = 12;
      
      public static const const_1890:int = 13;
      
      public static const const_1921:int = 16;
      
      public static const const_1893:int = 17;
      
      public static const const_1835:int = 18;
      
      public static const const_1881:int = 19;
      
      public static const const_1887:int = 20;
      
      public static const const_1898:int = 22;
      
      public static const const_2005:int = 23;
      
      public static const const_1863:int = 24;
      
      public static const const_1911:int = 25;
      
      public static const const_1971:int = 26;
      
      public static const const_1993:int = 27;
      
      public static const const_1833:int = 28;
      
      public static const const_1901:int = 29;
      
      public static const const_1859:int = 100;
      
      public static const const_1905:int = 101;
      
      public static const const_1961:int = 102;
      
      public static const const_1895:int = 103;
      
      public static const const_2002:int = 104;
      
      public static const const_1934:int = 105;
      
      public static const const_1877:int = 106;
      
      public static const const_1910:int = 107;
      
      public static const const_1940:int = 108;
      
      public static const const_1851:int = 109;
      
      public static const const_1840:int = 110;
      
      public static const const_1925:int = 111;
      
      public static const const_1938:int = 112;
      
      public static const const_1892:int = 113;
      
      public static const const_1981:int = 114;
      
      public static const const_1798:int = 115;
      
      public static const const_1999:int = 116;
      
      public static const const_1950:int = 117;
      
      public static const const_1952:int = 118;
      
      public static const const_2016:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1527:
            case const_1459:
               return "banned";
            case const_1601:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
