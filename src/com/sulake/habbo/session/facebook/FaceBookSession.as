package com.sulake.habbo.session.facebook
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.facebook.FaceBookAppRequestEvent;
   import com.sulake.habbo.communication.messages.incoming.facebook.FaceBookAuthenticateEvent;
   import com.sulake.habbo.communication.messages.incoming.facebook.FaceBookErrorEvent;
   import com.sulake.habbo.communication.messages.outgoing.facebook.FaceBookIsLoggedOffMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.facebook.FaceBookIsLoggedOnMessageComposer;
   import flash.external.ExternalInterface;
   
   public class FaceBookSession implements IDisposable
   {
      
      private static const const_954:String = "FlashExternalInterface.authenticateFacebook";
      
      private static const const_1333:String = "sendAccessTokenToServer";
      
      private static const const_1334:String = "fbKLogOut";
       
      
      private var _disposed:Boolean;
      
      private var _connection:IHabboCommunicationManager;
      
      public function FaceBookSession()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._connection = null;
            this._disposed = true;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         this._connection = param1;
         this._connection.addHabboConnectionMessageEvent(new FaceBookAuthenticateEvent(this.onAuthenticate));
         this._connection.addHabboConnectionMessageEvent(new FaceBookErrorEvent(this.onError));
         this._connection.addHabboConnectionMessageEvent(new FaceBookAppRequestEvent(this.onAppRequest));
      }
      
      private function onAuthenticate(param1:FaceBookAuthenticateEvent) : void
      {
         Logger.log("-- -- FACEBOOK SESSION RECEIVED onAuthenticate!");
         if(false)
         {
            ExternalInterface.addCallback(const_1333,this.jsFaceBookLogInCallback);
            ExternalInterface.addCallback(const_1334,this.jsFaceBookLogOutCallback);
            Logger.log("-- -- ADDED JAVASCRIPT CALLBACK HOOKS!");
            ExternalInterface.call(const_954);
            Logger.log("-- -- CALLED JAVASCRIPT METHOD " + const_954);
         }
      }
      
      private function jsFaceBookLogInCallback(param1:String) : void
      {
         var _loc3_:* = null;
         Logger.log("-- -- CALLBACK FROM JAVASCRIPT, RECEIVED VALUE " + param1);
         if(!this._connection.disposed)
         {
            _loc3_ = this._connection.getHabboMainConnection(null);
            if(_loc3_)
            {
               _loc3_.send(new FaceBookIsLoggedOnMessageComposer(null));
            }
         }
      }
      
      private function jsFaceBookLogOutCallback(param1:String) : void
      {
         var _loc2_:* = null;
         if(!this._connection.disposed)
         {
            _loc2_ = this._connection.getHabboMainConnection(null);
            if(_loc2_)
            {
               this._connection.getHabboMainConnection(null).send(new FaceBookIsLoggedOffMessageComposer());
            }
         }
      }
      
      private function onError(param1:FaceBookErrorEvent) : void
      {
      }
      
      private function onAppRequest(param1:FaceBookAppRequestEvent) : void
      {
      }
   }
}
