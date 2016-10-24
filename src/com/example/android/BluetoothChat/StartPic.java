package com.example.android.BluetoothChat;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;

public class StartPic
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    setContentView(2130903046);
    new Thread()
    {
      public void run()
      {
        try
        {
          sleep(1800L);
          Object localObject1;
          Object localObject2;
          Object localObject4;
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException = localInterruptedException;
          localInterruptedException.printStackTrace();
          try
          {
            localObject2 = Class.forName("com.example.android.BluetoothChat.BluetoothChat");
            localObject2 = new Intent(StartPic.this, (Class)localObject2);
            StartPic.this.startActivity((Intent)localObject2);
            return;
          }
          catch (ClassNotFoundException localClassNotFoundException1)
          {
            localClassNotFoundException1.printStackTrace();
            return;
          }
        }
        finally
        {
          try
          {
            localObject4 = Class.forName("com.example.android.BluetoothChat.BluetoothChat");
            localObject4 = new Intent(StartPic.this, (Class)localObject4);
            StartPic.this.startActivity((Intent)localObject4);
            throw ((Throwable)localObject3);
          }
          catch (ClassNotFoundException localClassNotFoundException3)
          {
            for (;;)
            {
              localClassNotFoundException3.printStackTrace();
            }
          }
        }
      }
    }.start();
  }
  
  protected void onPause()
  {
    super.onPause();
    finish();
  }
}


/* Location:              C:\_my\Airwheel\Приложение\Gotway_En\copy_com.kebye.android.gotwaybluetooth-2\classes-dex2jar.jar!\com\example\android\BluetoothChat\StartPic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */