package com.example.android.BluetoothChat;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

public class BluetoothAdvanced
  extends Activity
{
  private static final boolean D = false;
  public static final int MESSAGE_DEVICE_NAME = 4;
  public static final int MESSAGE_READ = 2;
  public static final int MESSAGE_STATE_CHANGE = 1;
  public static final int MESSAGE_TOAST = 5;
  public static final int MESSAGE_WRITE = 3;
  private static final String TAG = null;
  private BluetoothChatService mChatService = null;
  private final Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage) {}
  };
  private ImageButton mImBtBeen;
  private TextView mTVshow;
  
  private void hintsomething()
  {
    Toast.makeText(this, "Hei hei!! Don't press, there is no 'Dongdong' you want", 0).show();
  }
  
  private void sendMessage(String paramString)
  {
    if (this.mChatService.getState() != 3) {
      Toast.makeText(this, 2130968578, 0).show();
    }
    if (paramString.length() > 0)
    {
      paramString = paramString.getBytes();
      this.mChatService.write(paramString);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
    this.mImBtBeen = ((ImageButton)findViewById(2131099656));
    this.mTVshow = ((TextView)findViewById(2131099657));
    this.mTVshow.setTextSize(13.0F);
    this.mTVshow.setText("Advanced features are still perfect, please pay attention to the GotWay APP update, more help, please click the menu");
    this.mImBtBeen.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        BluetoothAdvanced.this.hintsomething();
      }
    });
    this.mChatService = new BluetoothChatService(this, this.mHandler);
    if ((this.mChatService != null) && (this.mChatService.getState() == 0)) {
      this.mChatService.start();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131034112, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131099669: 
      this.mTVshow.setText("In the 'basic function' interface, click menu and choose 'Connect a device - Secure', and then scan the other device, find,'GotWay', sometimes shown as 'null', and then connected it with password ,general is '1234', if success you can see the data of voltage or speed or other.if you cannot connect,you can paired Bluetooth first in the phone settings, then back to the software connect directly");
      return true;
    case 2131099670: 
      this.mTVshow.setText("Horizontal alignment method:Turn on and keep the car is stationary, connection to the car, return to the 'basic function' interface, click menu and then select Horizontal alignment,then you can heard didididi ring, at this time placed the body horizontally, reboot the car,if you heard 5 short sound and then a long sound to indicate success, If you do not hear a long sound After the sound of 5, indicate failure");
      return true;
    case 2131099671: 
      this.mTVshow.setText("Mode setting method: Turn on and keep the car is stationary, connection to the car, return to the 'basic function' interface, click menu and then select the mode you want");
      return true;
    }
    this.mTVshow.setText("Internal version: 3.4.51\n the software supporting GotWay_MCN2, part of the function is compatible with the MCN1. The \n The final explanation right belongs to the Ke Bai Yi Electronic Technology Company");
    return true;
  }
  
  public void onResume()
  {
    try
    {
      super.onResume();
      if ((this.mChatService != null) && (this.mChatService.getState() == 0)) {
        this.mChatService.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              C:\_my\Airwheel\Приложение\Gotway_En\copy_com.kebye.android.gotwaybluetooth-2\classes-dex2jar.jar!\com\example\android\BluetoothChat\BluetoothAdvanced.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */