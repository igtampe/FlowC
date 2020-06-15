using System;
using SmokeSignal;

namespace ViBECommands {

    ///<summary> The Bank ServerCommand Set</summary>
    public static class BankCommands {
        //BNKA57174GBANK

        ///<summary>Closes the specified bank of the specified ID</summary>
        ///<returns>S for Success, E For Error</returns>
        public static string CloseBank(String Bank,String ID) { return ServerCommand.RawCommand("BNK"+"C"+ID+Bank); }

        ///<summary>Opens an account on the specified bank for the specified ID</summary>
        ///<returns>S for Success, E For Error</returns>
        public static String OpenBank(String Bank,String ID) { return ServerCommand.RawCommand("BNK"+"O"+ID+Bank); }

        /// <summary>Retrieves the Log of the specified ID in user on the specified bank</summary>
        /// <returns>S for success, or E for Error. Log is ready for download if S is received</returns>
        public static String BankLog(String Bank,String ID){ return ServerCommand.RawCommand("BNK"+"L"+ID+Bank); }
    }

    ///<summary> Handles ServerCommands for Checkbook 2000</summary>
    public static class CheckbookCommands {

        /// <summary>Read All Checks from the specified user</summary>
        /// <returns>All checks from the user</returns>
        public static String ReadChecks(String ID) { return ServerCommand.RawCommand("CHCKBKREAD"+ID); }

        /// <summary>Removes the check at the specified index of the list of the user with the specified ID's checks</summary>
        /// <returns>S if successful, E Otherwise</returns>
        public static String RemoveCheck(String ID,int Index) { return ServerCommand.RawCommand("CHCKBKREMO"+ID+Index); }

        /// <summary>Adds a check (or bill if the type of item is selected)</summary>
        /// <param name="Destination">Destination user ID</param>
        /// <param name="Type">Type of this item (0 for Check, 1 for Bill)</param>
        /// <param name="Time">Current time</param>
        /// <param name="Name">Name of the current user</param>
        /// <param name="Bank">Bank of the current user this check will be paid out of/bill will be paid to</param>
        /// <param name="Amount">Amount of the check/bill</param>
        /// <param name="Subtype">Subtype of the check/bill (used for colors in checks)</param>
        /// <param name="Comment">Comment of the check/bill</param>
        /// <returns>S if successful, E otherwise</returns>
        public static String AddCheck(String Destination, int Type, String Time, String Name, String Bank, Int64 Amount, int Subtype, String Comment) { return ServerCommand.RawCommand("CHCKBKADD"+Destination+Type+"`"+Time+"`"+Name+"`"+Bank+"`"+Amount+"`::"+Subtype+"::"+Comment); }




    }

    /// <summary> Handles ServerCommands for core operations of ViBE</summary>
    public static class CoreCommands {
        
          /// <summary>Checks a user's credentials</summary>
    /// <param name="ID">ID of the user</param>
    /// <param name="PIN">Pin of the user</param>
    /// <returns>1 if the user was not found, 2 if the user was found, but the pin was incorrect, 3 if the user was found and the pin was correct.</returns>
           public static String CheckUser(String ID,String PIN) { return ServerCommand.RawCommand("CU"+ID+PIN); }

         /// <summary>Sends Money Between Accounts</summary>
          public static String SM(String Origin,String Destination, Int64 Amount) {return ServerCommand.RawCommand("SM"+Origin+Destination+Amount);}
    
           /// <summary>Transfers money between owned bank accounts</summary>
         public static String TM(String ID, String OriginBank, String DestinationBank, Int64 Amount) {return ServerCommand.RawCommand("TM"+ID+OriginBank+DestinationBank+Amount);}
    
          /// <summary>Change Pin Request</summary>
         public static String ChangePin(String ID, String NEWPIN) {return ServerCommand.RawCommand("CP"+ID+NEWPIN);}

          /// <summary>returns Information on a Specific User</summary>
          public static String UserInfo(String ID) {return ServerCommand.RawCommand("INFO"+ID);}

          /// <summary>returns a joined array with the directory</summary>
          public static String GetDirectory() {return ServerCommand.RawCommand("DIR");}

           /// <summary>Registers a User</summary>
          public static String RegisterUser(String Pin, String Username, bool Corporate) {
       if(Corporate) { return ServerCommand.RawCommand("REG" + Pin + "," + Username + " (Corp.)"); }
       return ServerCommand.RawCommand("REG"+Pin+","+Username);
    }

          /// <summary>Certifies a Transaction</summary>
          public static String Certify(String Transaction) {return ServerCommand.RawCommand("CERT"+Transaction);}
    }

    /// <summary>Handles ServerCommands for Notifications</summary>
    public static class NotifCommands { 
     /// <summary>Read All Notifications</summary>
        public static String ReadNotifs(String ID) {return ServerCommand.RawCommand("NOTIFREAD" + ID);}

    /// <summary>Clear All Notifications of the given ID</summary>
        public static String ClearNotifs(String ID) {return ServerCommand.RawCommand("NOTIFCLEAR" + ID);}

    /// <summary>Remove a specified notification</summary>
        public static String RemoveNotif(String ID,int Index) {return ServerCommand.RawCommand("NOTIFREMO" + ID + Index);}

    }
}