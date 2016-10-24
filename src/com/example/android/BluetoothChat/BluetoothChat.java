package com.example.android.BluetoothChat;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.Timer;
import java.util.TimerTask;

public class BluetoothChat
  extends Activity
{
  private static final boolean D = true;
  public static final String DEVICE_NAME = "device_name";
  public static final int MESSAGE_10HZ = 6;
  public static final int MESSAGE_DEVICE_NAME = 4;
  public static final int MESSAGE_READ = 2;
  public static final int MESSAGE_STATE_CHANGE = 1;
  public static final int MESSAGE_TOAST = 5;
  public static final int MESSAGE_WRITE = 3;
  private static final int REQUEST_CONNECT_DEVICE_INSECURE = 2;
  private static final int REQUEST_CONNECT_DEVICE_SECURE = 1;
  private static final int REQUEST_ENABLE_BT = 3;
  private static final String TAG = "BluetoothChat";
  public static final String TOAST = "toast";
  int ConnectCNT = 20;
  int MainCNT = 0;
  int TemFlashCNT = 0;
  boolean autoFlashTem = true;
  int beenFiveCNT = 0;
  boolean beenFiveStart = false;
  int been_half_second_later = 0;
  int beenfive_satrted = 0;
  double biaf1;
  double biaf2;
  double biaf3;
  double biaf4;
  double biaf5;
  int ch1;
  int ch2;
  int ch3;
  int ch4;
  int ch5;
  int ch6;
  int ch7;
  int ch8;
  boolean check_55AA55AA = true;
  int connectTimeInterval = 30;
  BluetoothDevice device;
  SharedPreferences.Editor editor;
  private String flash_tem_time = "";
  int flash_time = 300;
  int jiaoZhunCNT = 0;
  boolean jiaoZhunStart = false;
  private BluetoothAdapter mBluetoothAdapter = null;
  private BluetoothChatService mChatService = null;
  private String mConnectedDeviceName = null;
  Context mContext;
  private ArrayAdapter<String> mConversationArrayAdapter;
  private ListView mConversationView;
  private TextView mEnergyOut;
  private TextView mGoOut;
  private final Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      Object localObject1;
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      case 1: 
        Log.i("BluetoothChat", "MESSAGE_STATE_CHANGE: " + paramAnonymousMessage.arg1);
        switch (paramAnonymousMessage.arg1)
        {
        default: 
          return;
        case 0: 
        case 1: 
          BluetoothChat.this.setStatus(2130968582);
          return;
        case 3: 
          BluetoothChat.this.setStatus(BluetoothChat.this.getString(2130968581, new Object[] { BluetoothChat.this.mConnectedDeviceName }));
          BluetoothChat.this.mConversationArrayAdapter.clear();
          return;
        }
        BluetoothChat.this.setStatus(2130968580);
        return;
      case 3: 
        paramAnonymousMessage = new String((byte[])paramAnonymousMessage.obj);
        BluetoothChat.this.mConversationArrayAdapter.add("Send:  " + paramAnonymousMessage);
        return;
      case 2: 
        localObject1 = (byte[])paramAnonymousMessage.obj;
      }
      Object localObject2;
      int i;
      Object localObject3;
      for (;;)
      {
        try
        {
          localObject2 = new StringBuilder(localObject1.length);
          j = localObject1.length;
          i = 0;
          if (i >= j)
          {
            localObject2 = ((StringBuilder)localObject2).toString().replace(" ", "");
            localObject3 = BluetoothChat.this;
            ((BluetoothChat)localObject3).rcvbuffer_new += (String)localObject2;
            i = BluetoothChat.this.rcvbuffer_new.indexOf("185A5A5A5A");
            if (i == -1) {
              break label795;
            }
            BluetoothChat.this.check_55AA55AA = true;
            paramAnonymousMessage = BluetoothChat.this.rcvbuffer_new.substring(0, i + 10);
            if (i + 10 < BluetoothChat.this.rcvbuffer_new.length()) {
              continue;
            }
            BluetoothChat.this.rcvbuffer_new = "";
            break label2424;
            if (i >= paramAnonymousMessage.length() - 12) {
              break;
            }
          }
          switch (i / 4)
          {
          case 0: 
            ((StringBuilder)localObject2).append(String.format("%02X ", new Object[] { Byte.valueOf(localObject1[i]) }));
            i += 1;
            continue;
            BluetoothChat.this.rcvbuffer_new = BluetoothChat.this.rcvbuffer_new.substring(i + 10);
          }
        }
        catch (UnsupportedEncodingException paramAnonymousMessage)
        {
          paramAnonymousMessage.printStackTrace();
          return;
        }
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch1 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch2 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch3 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch4 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch5 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch6 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch7 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 4);
        BluetoothChat.this.ch8 = Integer.parseInt((String)localObject1, 16);
        break label2430;
        localObject1 = paramAnonymousMessage.substring(i + 4, i + 4 + 2);
        BluetoothChat.this.type_ch = Integer.parseInt((String)localObject1, 16);
        break label2430;
        label795:
        BluetoothChat.this.check_55AA55AA = false;
        paramAnonymousMessage = new String((byte[])localObject1, 0, paramAnonymousMessage.arg1, "GBK");
        localObject1 = BluetoothChat.this;
        ((BluetoothChat)localObject1).rcvbuffer += paramAnonymousMessage;
        i = BluetoothChat.this.rcvbuffer.indexOf("\r\n");
        if (i == -1) {
          break;
        }
        paramAnonymousMessage = BluetoothChat.this.rcvbuffer.substring(0, i);
        if (i + 2 >= BluetoothChat.this.rcvbuffer.length()) {}
        String[] arrayOfString;
        for (BluetoothChat.this.rcvbuffer = "";; BluetoothChat.this.rcvbuffer = BluetoothChat.this.rcvbuffer.substring(i + 2))
        {
          arrayOfString = paramAnonymousMessage.split(" +");
          if (arrayOfString.length <= 1) {
            break;
          }
          localObject2 = "";
          localObject3 = "0";
          i = 0;
          if ((i < arrayOfString.length) && (i + 1 < arrayOfString.length)) {
            break label1097;
          }
          switch (BluetoothChat.this.revType)
          {
          case 0: 
            BluetoothChat.this.mSpeedOut.setText(BluetoothChat.this.msSpeed);
            BluetoothChat.this.mVOut.setText(BluetoothChat.this.msV);
            BluetoothChat.this.mGoOut.setText(BluetoothChat.this.msGo);
            BluetoothChat.this.mEnergyOut.setText((CharSequence)localObject3);
            BluetoothChat.this.mTemOut.setText(BluetoothChat.this.msTem);
            return;
          }
        }
        label1097:
        if (arrayOfString[(i + 1)].equals("dV"))
        {
          localObject1 = Double.valueOf(Double.valueOf(Double.parseDouble(arrayOfString[i])).doubleValue() / 10.0D);
          paramAnonymousMessage = (Message)localObject1;
          if (((Double)localObject1).doubleValue() > 67.2D) {
            paramAnonymousMessage = Double.valueOf(67.2D + (((Double)localObject1).doubleValue() - 67.2D) * 0.2D);
          }
          paramAnonymousMessage = Double.valueOf(paramAnonymousMessage.doubleValue() + 1.0E-4D);
          localObject3 = new DecimalFormat("##.####");
          localObject1 = localObject2 + ((DecimalFormat)localObject3).format(paramAnonymousMessage) + "V";
          BluetoothChat.this.msV = ((DecimalFormat)localObject3).format(paramAnonymousMessage);
          j = BluetoothChat.this.msV.indexOf(".");
          BluetoothChat.this.msV = (BluetoothChat.this.msV.substring(0, j + 3) + "V");
          if (paramAnonymousMessage.doubleValue() < 53.0D)
          {
            paramAnonymousMessage = "0%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 54.1D)
          {
            paramAnonymousMessage = "10%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 56.2D)
          {
            paramAnonymousMessage = "20%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 57.7D)
          {
            paramAnonymousMessage = "30%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 59.1D)
          {
            paramAnonymousMessage = "40%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 60.5D)
          {
            paramAnonymousMessage = "50%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 61.7D)
          {
            paramAnonymousMessage = "60%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 62.8D)
          {
            paramAnonymousMessage = "70%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() < 63.9D)
          {
            paramAnonymousMessage = "80%";
            break label2440;
          }
          if (paramAnonymousMessage.doubleValue() >= 65.0D) {
            break label2456;
          }
          paramAnonymousMessage = "90%";
          break label2440;
        }
        if (arrayOfString[(i + 1)].equals("dM/S"))
        {
          double d = Double.parseDouble(arrayOfString[i]);
          BluetoothChat.this.biaf1 = (BluetoothChat.this.biaf1 * 0.0D + Double.valueOf(d).doubleValue() / 10.0D * 3.6D * 7.5E-1D);
          paramAnonymousMessage = Double.valueOf(BluetoothChat.this.biaf1);
          BluetoothChat.this.mSpeedNow = paramAnonymousMessage.doubleValue();
          paramAnonymousMessage = Double.valueOf(paramAnonymousMessage.doubleValue() + 1.0E-4D);
          BluetoothChat.this.set_vibrator_speed(paramAnonymousMessage.doubleValue());
          localDecimalFormat = new DecimalFormat("##.####");
          localObject1 = localObject2 + localDecimalFormat.format(paramAnonymousMessage) + "KMpH ";
          BluetoothChat.this.msSpeed = localDecimalFormat.format(paramAnonymousMessage);
          j = BluetoothChat.this.msSpeed.indexOf(".");
          BluetoothChat.this.msSpeed = BluetoothChat.this.msSpeed.substring(0, j + 3);
          paramAnonymousMessage = (Message)localObject3;
          break label2440;
        }
        if (arrayOfString[i].equals("dA"))
        {
          paramAnonymousMessage = (Message)localObject3;
          localObject1 = localObject2;
          if (i <= 1) {
            break label2440;
          }
          paramAnonymousMessage = Double.valueOf(Double.valueOf(Double.valueOf(Double.parseDouble(arrayOfString[(i - 1)])).doubleValue() / 10.0D).doubleValue() + 1.0E-4D);
          localDecimalFormat = new DecimalFormat("##.####");
          localObject1 = localObject2 + localDecimalFormat.format(paramAnonymousMessage) + "A";
          BluetoothChat.this.msCurrent = localDecimalFormat.format(paramAnonymousMessage);
          j = BluetoothChat.this.msCurrent.indexOf(".");
          BluetoothChat.this.msCurrent = BluetoothChat.this.msCurrent.substring(0, j + 3);
          paramAnonymousMessage = (Message)localObject3;
          break label2440;
        }
        if (arrayOfString[(i + 1)].equals("dA"))
        {
          paramAnonymousMessage = Double.valueOf(Double.valueOf(Double.valueOf(Double.parseDouble(arrayOfString[i])).doubleValue() / 10.0D).doubleValue() + 1.0E-4D);
          localDecimalFormat = new DecimalFormat("##.####");
          localObject1 = localObject2 + localDecimalFormat.format(paramAnonymousMessage) + "A";
          BluetoothChat.this.msCurrent = localDecimalFormat.format(paramAnonymousMessage);
          j = BluetoothChat.this.msCurrent.indexOf(".");
          BluetoothChat.this.msCurrent = BluetoothChat.this.msCurrent.substring(0, j + 3);
          paramAnonymousMessage = (Message)localObject3;
          break label2440;
        }
        if (arrayOfString[(i + 1)].equals("m"))
        {
          paramAnonymousMessage = Double.valueOf(Double.valueOf(Double.valueOf(Double.parseDouble(arrayOfString[i])).doubleValue() / 1000.0D).doubleValue() + 1.0E-4D);
          localDecimalFormat = new DecimalFormat("##.####");
          localObject1 = localObject2 + localDecimalFormat.format(paramAnonymousMessage) + "KM";
          BluetoothChat.this.msGo = localDecimalFormat.format(paramAnonymousMessage);
          j = BluetoothChat.this.msGo.indexOf(".");
          BluetoothChat.this.msGo = BluetoothChat.this.msGo.substring(0, j + 4);
          paramAnonymousMessage = (Message)localObject3;
          break label2440;
        }
        paramAnonymousMessage = (Message)localObject3;
        localObject1 = localObject2;
        if (!arrayOfString[(i + 1)].equals("C")) {
          break label2440;
        }
        paramAnonymousMessage = Double.valueOf(Double.valueOf((Double.valueOf(Double.parseDouble(arrayOfString[i])).doubleValue() - 521.0D) / 340.0D + 35.0D).doubleValue() + 1.0E-4D);
        DecimalFormat localDecimalFormat = new DecimalFormat("##.####");
        localObject1 = localObject2 + localDecimalFormat.format(paramAnonymousMessage) + "C";
        BluetoothChat.this.msTem = localDecimalFormat.format(paramAnonymousMessage);
        int j = BluetoothChat.this.msTem.indexOf(".");
        BluetoothChat.this.msTem = BluetoothChat.this.msTem.substring(0, j + 4);
        paramAnonymousMessage = (Message)localObject3;
        break label2440;
        BluetoothChat.this.mTemOut.setText(BluetoothChat.this.msTem);
        return;
        BluetoothChat.this.mSpeedOut.setText(BluetoothChat.this.msCurrent);
        return;
        BluetoothChat.this.mConnectedDeviceName = paramAnonymousMessage.getData().getString("device_name");
        Toast.makeText(BluetoothChat.this.getApplicationContext(), "Connected to " + BluetoothChat.this.mConnectedDeviceName, 0).show();
        return;
        Toast.makeText(BluetoothChat.this.getApplicationContext(), paramAnonymousMessage.getData().getString("toast"), 0).show();
        return;
        BluetoothChat.this.Timer10HZ();
        return;
        label2424:
        i = 0;
        continue;
        label2430:
        i += 4;
      }
      return;
      for (;;)
      {
        label2440:
        i += 2;
        localObject3 = paramAnonymousMessage;
        localObject2 = localObject1;
        break;
        label2456:
        paramAnonymousMessage = "100%";
      }
    }
  };
  private ImageButton mImBtBeen;
  private EditText mOutEditText;
  private StringBuffer mOutStringBuffer;
  SharedPreferences mSp;
  double mSpeedNow;
  private TextView mSpeedOut;
  private int mStauts = 0;
  private TimerTask mTask;
  private TextView mTemOut;
  private Timer mTimer;
  private TextView mVOut;
  String msCurrent = "0";
  String msGo = "0";
  String msSpeed = "0";
  String msTem = "0";
  String msV = "0";
  private TextView mtvEnergyLable;
  private TextView mtvGoLable;
  private TextView mtvSpeedLable;
  private TextView mtvTemLable;
  private TextView mtvVLable;
  int nBeSend = 0;
  String prevTemText = "0";
  private String prev_bluetooth_addr = "";
  private String rcvbuffer = "";
  private String rcvbuffer_new = "";
  int revType = 0;
  String sch1;
  String sch2;
  String sch3;
  String sch4;
  String sch5;
  String sch6;
  String sch7;
  String sch8;
  double speed;
  int tryTimes = 0;
  int type_ch;
  private String vibration_speed = "";
  double vibration_warn_speed = 16.0D;
  Vibrator vibrator;
  int waittintcnt = 0;
  
  private void Timer10HZ()
  {
    this.MainCNT += 1;
    if (this.MainCNT == 60000) {
      this.MainCNT = 0;
    }
    label118:
    label137:
    label239:
    label274:
    label291:
    DecimalFormat localDecimalFormat;
    String str1;
    if (this.vibration_speed.contains("13"))
    {
      this.vibration_warn_speed = 13.0D;
      if ((this.speed <= this.vibration_warn_speed + 3.0D) && (this.speed >= -this.vibration_warn_speed - 3.0D)) {
        break label728;
      }
      if ((this.MainCNT % 10 == 0) || (this.MainCNT % 10 == 2) || (this.MainCNT % 10 == 4)) {
        this.vibrator.vibrate(80L);
      }
      if (!this.flash_tem_time.contains("15")) {
        break label787;
      }
      this.flash_time = 150;
      this.ConnectCNT += 1;
      this.waittintcnt += 1;
      if ((this.mChatService.getState() != 1) || (this.tryTimes >= 60) || (this.waittintcnt <= 10) || (this.ConnectCNT <= this.connectTimeInterval)) {
        break label994;
      }
      this.tryTimes += 1;
      if (this.prev_bluetooth_addr.length() == 17) {
        break label869;
      }
      this.mSpeedOut.setTextSize(18.0F);
      this.mSpeedOut.setText("\nPlease connect manually\n");
      if (this.tryTimes >= 10) {
        break label965;
      }
      if (this.connectTimeInterval < 600) {
        this.connectTimeInterval += 10;
      }
      this.ConnectCNT = 0;
      this.autoFlashTem = true;
      this.TemFlashCNT = 170;
      this.nBeSend = 0;
      if (!this.check_55AA55AA) {
        break label1621;
      }
      localDecimalFormat = new DecimalFormat("##.####");
      String str2 = "100";
      str1 = str2;
      switch (this.type_ch)
      {
      default: 
        str1 = str2;
      case 1: 
      case 2: 
        if (this.mChatService.getState() == 3) {}
        switch (this.revType)
        {
        default: 
          label392:
          this.mtvVLable.setText("voltage: (V)");
          this.mtvGoLable.setText("The trip: (km)");
          this.mtvEnergyLable.setText("power：(%)");
          this.mtvTemLable.setText("The temperature: ( C )");
          this.mVOut.setText(this.sch1);
          this.mGoOut.setText(this.sch4);
          this.mEnergyOut.setText(str1);
          this.mTemOut.setText(this.sch6);
          label474:
          if (this.beenFiveStart)
          {
            this.beenFiveCNT += 1;
            if (this.beenFiveCNT % 6 == 1) {
              sendMessage("b");
            }
          }
          else
          {
            label509:
            if (this.jiaoZhunStart)
            {
              this.jiaoZhunCNT += 1;
              if (this.jiaoZhunCNT % 6 != 1) {
                break label1783;
              }
              sendMessage("c");
            }
          }
          break;
        }
        break;
      }
    }
    for (;;)
    {
      if (this.been_half_second_later > 0) {
        this.been_half_second_later -= 1;
      }
      if (this.been_half_second_later == 1) {
        sendMessage("b");
      }
      return;
      if ((this.vibration_speed.contains("16")) || (this.vibration_speed.contains("none")))
      {
        this.vibration_warn_speed = 16.0D;
        break;
      }
      if (this.vibration_speed.contains("19"))
      {
        this.vibration_warn_speed = 19.0D;
        break;
      }
      if (this.vibration_speed.contains("22"))
      {
        this.vibration_warn_speed = 22.0D;
        break;
      }
      if (this.vibration_speed.contains("25"))
      {
        this.vibration_warn_speed = 25.0D;
        break;
      }
      if (this.vibration_speed.contains("28"))
      {
        this.vibration_warn_speed = 28.0D;
        break;
      }
      if (!this.vibration_speed.contains("close")) {
        break;
      }
      this.vibration_warn_speed = 10000.0D;
      break;
      label728:
      if (((this.speed <= this.vibration_warn_speed) && (this.speed >= -this.vibration_warn_speed)) || ((this.MainCNT % 10 != 0) && (this.MainCNT % 10 != 2))) {
        break label118;
      }
      this.vibrator.vibrate(80L);
      break label118;
      label787:
      if ((this.flash_tem_time.contains("30")) || (this.flash_tem_time.contains("none")))
      {
        this.flash_time = 300;
        break label137;
      }
      if (this.flash_tem_time.contains("60"))
      {
        this.flash_time = 600;
        break label137;
      }
      if (!this.flash_tem_time.contains("120")) {
        break label137;
      }
      this.flash_time = 1200;
      break label137;
      label869:
      this.device = this.mBluetoothAdapter.getRemoteDevice(this.prev_bluetooth_addr);
      this.mChatService.connect(this.device, true);
      this.mtvSpeedLable.setText("Connect hint");
      this.mSpeedOut.setTextSize(15.0F);
      this.mSpeedOut.setText("Try to connect the last connection：" + this.prev_bluetooth_addr + "\n" + this.tryTimes + " times");
      break label239;
      label965:
      if (this.connectTimeInterval < 600) {
        this.connectTimeInterval += 30;
      }
      this.ConnectCNT = 0;
      break label274;
      label994:
      if (this.mChatService.getState() == 3)
      {
        this.connectTimeInterval = 30;
        this.tryTimes = 0;
        this.ConnectCNT = 0;
        this.waittintcnt = 0;
        this.mSpeedOut.setTextSize(55.0F);
        if (this.mtvSpeedLable.getText() != "Connect hint") {
          break label291;
        }
        this.mtvSpeedLable.setText("Speed:(km/h)");
        this.mSpeedOut.setText("0");
        break label291;
      }
      if (this.tryTimes >= 60)
      {
        this.mSpeedOut.setText("\nAutomatic connection failed\n");
        this.ConnectCNT = 0;
        this.waittintcnt = 0;
        break label291;
      }
      if (this.mChatService.getState() != 2) {
        break label291;
      }
      this.waittintcnt = 0;
      break label291;
      double d = (short)this.ch1 / 100.0D + 1.0E-4D;
      this.sch1 = localDecimalFormat.format(d);
      int i = this.sch1.indexOf(".");
      this.sch1 = this.sch1.substring(0, i + 3);
      if (d < 53.0D) {
        str1 = "0%";
      }
      for (;;)
      {
        d = (short)this.ch2 / 100.0D * 3.6D + 1.0E-4D;
        this.mSpeedNow = d;
        this.sch2 = localDecimalFormat.format(d);
        i = this.sch2.indexOf(".");
        this.sch2 = this.sch2.substring(0, i + 3);
        set_vibrator_speed(d);
        this.sch4 = localDecimalFormat.format((this.ch3 * 65535 + this.ch4) / 1000.0D + 1.0E-4D);
        i = this.sch4.indexOf(".");
        this.sch4 = this.sch4.substring(0, i + 4);
        this.sch5 = localDecimalFormat.format((short)this.ch5 / 100.0D + 1.0E-4D);
        i = this.sch5.indexOf(".");
        this.sch5 = this.sch5.substring(0, i + 3);
        this.sch6 = localDecimalFormat.format(((short)this.ch6 - 521.0D) / 340.0D + 35.0D + 1.0E-4D);
        i = this.sch6.indexOf(".");
        this.sch6 = this.sch6.substring(0, i + 4);
        break;
        if (d < 54.1D) {
          str1 = "10%";
        } else if (d < 56.2D) {
          str1 = "20%";
        } else if (d < 57.7D) {
          str1 = "30%";
        } else if (d < 59.1D) {
          str1 = "40%";
        } else if (d < 60.5D) {
          str1 = "50%";
        } else if (d < 61.7D) {
          str1 = "60%";
        } else if (d < 62.8D) {
          str1 = "70%";
        } else if (d < 63.9D) {
          str1 = "80%";
        } else if (d < 65.0D) {
          str1 = "90%";
        } else {
          str1 = "100%";
        }
      }
      this.mtvSpeedLable.setText("Speed:(km/h)");
      this.mSpeedOut.setText(this.sch2);
      break label392;
      this.mSpeedOut.setText(this.sch5);
      break label392;
      this.mSpeedOut.setText(this.sch2);
      break label392;
      label1621:
      if ((!this.autoFlashTem) || (this.mChatService.getState() != 3)) {
        break label474;
      }
      if (this.TemFlashCNT < 30000) {
        this.TemFlashCNT += 1;
      }
      if (this.TemFlashCNT <= 200) {
        break label474;
      }
      if (this.nBeSend == 0)
      {
        this.nBeSend = 1;
        sendMessage("n");
        this.mtvTemLable.setText("Refresh...");
      }
      if (this.mTemOut.getText() == this.prevTemText) {
        break label474;
      }
      sendMessage(",");
      this.prevTemText = ((String)this.mTemOut.getText());
      this.nBeSend = 0;
      this.TemFlashCNT = 0;
      this.mtvTemLable.setText("The temperature: ( C )");
      break label474;
      if (this.beenFiveCNT <= 53) {
        break label509;
      }
      this.beenfive_satrted = 0;
      this.beenFiveStart = false;
      this.beenFiveCNT = 0;
      break label509;
      label1783:
      if (this.jiaoZhunCNT % 6 == 4)
      {
        sendMessage("y");
      }
      else if (this.jiaoZhunCNT > 17)
      {
        this.jiaoZhunStart = false;
        this.jiaoZhunCNT = 0;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  private void connectDevice(Intent paramIntent, boolean paramBoolean)
  {
    paramIntent = paramIntent.getExtras().getString(DeviceListActivity.EXTRA_DEVICE_ADDRESS);
    BluetoothDevice localBluetoothDevice = this.mBluetoothAdapter.getRemoteDevice(paramIntent);
    this.mChatService.connect(localBluetoothDevice, paramBoolean);
    this.editor.putString("BlueTooth_addr", paramIntent);
    this.editor.commit();
    this.prev_bluetooth_addr = paramIntent;
    this.ConnectCNT = 0;
    this.connectTimeInterval = 30;
    this.tryTimes = 0;
  }
  
  @SuppressLint({"NewApi"})
  private void ensureDiscoverable()
  {
    Log.d("BluetoothChat", "ensure discoverable");
    if (this.mBluetoothAdapter.getScanMode() != 23)
    {
      Intent localIntent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
      localIntent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", 300);
      startActivity(localIntent);
    }
  }
  
  private void sendMessage(String paramString)
  {
    if (this.mChatService.getState() != 3)
    {
      Toast.makeText(this, 2130968578, 0).show();
      this.mSpeedOut.setTextSize(22.0F);
      this.mSpeedOut.setText("Please connect....");
      return;
    }
    if (paramString == "n")
    {
      this.revType = 1;
      this.mSpeedNow = 1000.0D;
    }
    for (;;)
    {
      if (paramString.length() > 0)
      {
        byte[] arrayOfByte = paramString.getBytes();
        this.mChatService.write(arrayOfByte);
      }
      if ((this.beenfive_satrted != 0) || (paramString == "y") || (paramString == "c")) {
        break;
      }
      switch (this.revType)
      {
      default: 
        return;
      case 0: 
        this.mtvSpeedLable.setText("Speed:(km/h)");
        this.mtvVLable.setText("voltage: (V)");
        this.mtvGoLable.setText("The trip: (km)");
        this.mtvEnergyLable.setText("power：(%)");
        return;
        if (paramString == "m")
        {
          this.revType = 2;
          this.mSpeedNow = 1000.0D;
        }
        else
        {
          this.revType = 0;
          this.autoFlashTem = true;
          this.nBeSend = 0;
          this.TemFlashCNT = 100;
          this.mtvTemLable.setText("The temperature: ( C )");
        }
        break;
      }
    }
    this.mtvVLable.setText("Pause display");
    this.mtvGoLable.setText("Pause display");
    this.mtvEnergyLable.setText("Pause display");
    this.mtvSpeedLable.setText("Pause display");
    this.mtvTemLable.setText("The temperature: ( C )");
    return;
    this.mtvSpeedLable.setText("Motor current: (A)");
    this.mtvVLable.setText("Pause display");
    this.mtvGoLable.setText("Pause display");
    this.mtvEnergyLable.setText("Pause display");
    this.mtvTemLable.setText("Pause display");
  }
  
  private final void setStatus(int paramInt) {}
  
  private final void setStatus(CharSequence paramCharSequence) {}
  
  private void set_vibrator_speed(double paramDouble)
  {
    this.speed = paramDouble;
  }
  
  private void setupChat()
  {
    Log.d("BluetoothChat", "setupChat()");
    this.mConversationArrayAdapter = new ArrayAdapter(this, 2130903045);
    this.mSpeedOut = ((TextView)findViewById(2131099659));
    this.mVOut = ((TextView)findViewById(2131099661));
    this.mGoOut = ((TextView)findViewById(2131099665));
    this.mImBtBeen = ((ImageButton)findViewById(2131099668));
    this.mtvSpeedLable = ((TextView)findViewById(2131099658));
    this.mtvVLable = ((TextView)findViewById(2131099660));
    this.mtvGoLable = ((TextView)findViewById(2131099664));
    this.mTemOut = ((TextView)findViewById(2131099667));
    this.mEnergyOut = ((TextView)findViewById(2131099663));
    this.mtvEnergyLable = ((TextView)findViewById(2131099662));
    this.mtvTemLable = ((TextView)findViewById(2131099666));
    this.mTimer.schedule(this.mTask, 0L, 100L);
    this.vibrator = ((Vibrator)getSystemService("vibrator"));
    this.mImBtBeen.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        BluetoothChat.this.sendMessage("b");
      }
    });
    this.mChatService = new BluetoothChatService(this, this.mHandler);
    this.mOutStringBuffer = new StringBuffer("");
  }
  
  private void updateSharedPreferencesValue()
  {
    this.prev_bluetooth_addr = this.mSp.getString("BlueTooth_addr", "none");
    this.flash_tem_time = this.mSp.getString("flash_tem_time", "none");
    this.vibration_speed = this.mSp.getString("Vibration_Speed", "none");
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Log.d("BluetoothChat", "onActivityResult " + paramInt2);
    switch (paramInt1)
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        do
        {
          return;
        } while (paramInt2 != -1);
        connectDevice(paramIntent, true);
        return;
      } while (paramInt2 != -1);
      connectDevice(paramIntent, false);
      return;
    }
    if (paramInt2 == -1)
    {
      setupChat();
      return;
    }
    Log.d("BluetoothChat", "BT not enabled");
    Toast.makeText(this, 2130968579, 0).show();
    finish();
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.e("BluetoothChat", "+++ ON CREATE +++");
    setContentView(2130903044);
    this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (this.mBluetoothAdapter == null)
    {
      Toast.makeText(this, "Bluetooth is not available", 1).show();
      finish();
      return;
    }
    this.mContext = this;
    this.mSp = this.mContext.getSharedPreferences("GotWay.ini", 0);
    this.editor = this.mSp.edit();
    updateSharedPreferencesValue();
    this.mTimer = new Timer();
    this.mTask = new TimerTask()
    {
      public void run()
      {
        Object localObject = BluetoothChat.this;
        ((BluetoothChat)localObject).mStauts += 1;
        localObject = new Message();
        ((Message)localObject).what = 6;
        BluetoothChat.this.mHandler.sendMessage((Message)localObject);
      }
    };
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131034113, paramMenu);
    return true;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (this.mChatService != null) {
      this.mChatService.stop();
    }
    Log.e("BluetoothChat", "--- ON DESTROY ---");
    this.mTimer.cancel();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    case 2131099675: 
    case 2131099676: 
    case 2131099692: 
    case 2131099698: 
    default: 
      return false;
    case 2131099673: 
      startActivityForResult(new Intent(this, DeviceListActivity.class), 1);
      this.connectTimeInterval = 600;
      return true;
    case 2131099674: 
      startActivityForResult(new Intent(this, DeviceListActivity.class), 2);
      this.connectTimeInterval = 600;
      return true;
    case 2131099691: 
      this.autoFlashTem = false;
      sendMessage("n");
      return true;
    case 2131099690: 
      this.autoFlashTem = false;
      sendMessage("m");
      return true;
    case 2131099684: 
      try
      {
        startActivity(new Intent(this, Class.forName("com.example.android.BluetoothChat.BluetoothAdvanced")));
        return true;
      }
      catch (ClassNotFoundException paramMenuItem)
      {
        for (;;)
        {
          paramMenuItem.printStackTrace();
        }
      }
    case 2131099685: 
      sendMessage(",");
      if ((this.mChatService.getState() == 3) && (this.beenfive_satrted == 0) && (!this.beenFiveStart)) {
        this.beenFiveStart = true;
      }
      return true;
    case 2131099686: 
      sendMessage(",");
      if (this.mChatService.getState() == 3)
      {
        if (this.mSpeedNow != 1000.0D) {
          break label325;
        }
        Toast.makeText(this, "Failure, because in the view of current or temperature", 0).show();
      }
      for (;;)
      {
        return true;
        if ((this.mSpeedNow > 0.3D) || (this.mSpeedNow < -0.3D))
        {
          Toast.makeText(this, "Failure, because it's running", 0).show();
        }
        else if (this.beenFiveStart)
        {
          Toast.makeText(this, "Please wait 5 sound alarm completed", 0).show();
        }
        else if (!this.jiaoZhunStart)
        {
          Toast.makeText(this, "Enter the success, please put GotWay horizontal and then reboot", 0).show();
          this.jiaoZhunStart = true;
        }
      }
    case 2131099687: 
      sendMessage("h");
      if (this.mChatService.getState() == 3)
      {
        if ((this.mSpeedNow <= 0.3D) && (this.mSpeedNow >= -0.3D)) {
          break label461;
        }
        Toast.makeText(this, "Please stop the car and try again", 0).show();
      }
      for (;;)
      {
        return true;
        Toast.makeText(this, "The mode has been set to Madden", 0).show();
        this.been_half_second_later = 7;
      }
    case 2131099688: 
      sendMessage("f");
      if (this.mChatService.getState() == 3)
      {
        if ((this.mSpeedNow <= 0.3D) && (this.mSpeedNow >= -0.3D)) {
          break label534;
        }
        Toast.makeText(this, "Please stop the car and try again", 0).show();
      }
      for (;;)
      {
        return true;
        if (this.check_55AA55AA)
        {
          Toast.makeText(this, "The mode has been set to comfort", 0).show();
          this.been_half_second_later = 7;
        }
        else
        {
          Toast.makeText(this, "MCN1 no comfort mode .", 0).show();
        }
      }
    case 2131099689: 
      sendMessage("s");
      if (this.mChatService.getState() == 3)
      {
        if ((this.mSpeedNow <= 0.3D) && (this.mSpeedNow >= -0.3D)) {
          break label628;
        }
        Toast.makeText(this, "Please stop the car and try again", 0).show();
      }
      for (;;)
      {
        return true;
        Toast.makeText(this, "The mode has been set to Soft", 0).show();
        this.been_half_second_later = 7;
      }
    case 2131099677: 
      paramMenuItem.setChecked(true);
      this.editor.putString("Vibration_Speed", "13");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099678: 
      paramMenuItem.setChecked(true);
      this.editor.putString("Vibration_Speed", "16");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099679: 
      paramMenuItem.setChecked(true);
      this.editor.putString("Vibration_Speed", "19");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099680: 
      paramMenuItem.setChecked(true);
      this.editor.putString("Vibration_Speed", "22");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099681: 
      paramMenuItem.setChecked(true);
      this.editor.putString("Vibration_Speed", "25");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099682: 
      paramMenuItem.setChecked(true);
      this.editor.putString("Vibration_Speed", "28");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099683: 
      paramMenuItem.setChecked(true);
      this.editor.putString("Vibration_Speed", "close");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099693: 
      this.autoFlashTem = false;
      sendMessage("n");
      return true;
    case 2131099694: 
      paramMenuItem.setChecked(true);
      sendMessage(",");
      this.editor.putString("flash_tem_time", "15");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099695: 
      paramMenuItem.setChecked(true);
      sendMessage(",");
      this.editor.putString("flash_tem_time", "30");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099696: 
      paramMenuItem.setChecked(true);
      sendMessage(",");
      this.editor.putString("flash_tem_time", "60");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099697: 
      paramMenuItem.setChecked(true);
      sendMessage(",");
      this.editor.putString("flash_tem_time", "120");
      this.editor.commit();
      updateSharedPreferencesValue();
      return true;
    case 2131099699: 
      sendMessage("u");
      if (this.mChatService.getState() == 3)
      {
        if ((this.mSpeedNow <= 0.3D) && (this.mSpeedNow >= -0.3D)) {
          break label1181;
        }
        Toast.makeText(this, "Please stop the car and try again", 0).show();
      }
      for (;;)
      {
        return true;
        Toast.makeText(this, "Level 1 alarm closed", 0).show();
        this.been_half_second_later = 7;
      }
    case 2131099700: 
      label325:
      label461:
      label534:
      label628:
      label1181:
      sendMessage("i");
      if (this.mChatService.getState() == 3)
      {
        if ((this.mSpeedNow <= 0.3D) && (this.mSpeedNow >= -0.3D)) {
          break label1254;
        }
        Toast.makeText(this, "Please stop the car and try again", 0).show();
      }
      for (;;)
      {
        return true;
        label1254:
        Toast.makeText(this, "Level 1 alarm closed", 0).show();
        this.been_half_second_later = 7;
      }
    }
    sendMessage("o");
    if (this.mChatService.getState() == 3)
    {
      if ((this.mSpeedNow <= 0.3D) && (this.mSpeedNow >= -0.3D)) {
        break label1327;
      }
      Toast.makeText(this, "Please stop the car and try again", 0).show();
    }
    for (;;)
    {
      return true;
      label1327:
      Toast.makeText(this, "Speed alarm opened", 0).show();
      this.been_half_second_later = 7;
    }
  }
  
  public void onPause()
  {
    try
    {
      super.onPause();
      Log.e("BluetoothChat", "- ON PAUSE -");
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void onResume()
  {
    try
    {
      super.onResume();
      Log.e("BluetoothChat", "+ ON RESUME +");
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
  
  @SuppressLint({"NewApi"})
  public void onStart()
  {
    super.onStart();
    Log.e("BluetoothChat", "++ ON START ++");
    if (!this.mBluetoothAdapter.isEnabled()) {
      startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 3);
    }
    while (this.mChatService != null) {
      return;
    }
    setupChat();
  }
  
  public void onStop()
  {
    super.onStop();
    Log.e("BluetoothChat", "-- ON STOP --");
  }
}


/* Location:              C:\_my\Airwheel\Приложение\Gotway_En\copy_com.kebye.android.gotwaybluetooth-2\classes-dex2jar.jar!\com\example\android\BluetoothChat\BluetoothChat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */