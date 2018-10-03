package com.simran.andltcminerpro;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.provider.Settings.Secure;
import android.support.v4.app.NotificationCompat.Builder;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.vending.licensing.AESObfuscator;
import com.google.android.vending.licensing.LicenseChecker;
import com.google.android.vending.licensing.LicenseCheckerCallback;
import com.google.android.vending.licensing.Policy;
import com.google.android.vending.licensing.ServerManagedPolicy;
import com.jordanrulz.droidbtc.C0035R;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.http.util.ByteArrayBuffer;

public class AndLTCMinerPROActivity extends Activity {
    public static final String PREFS_NAME = "Miner";
    private static final byte[] SALT = new byte[]{(byte) 3, (byte) -14, (byte) 15, (byte) -92, (byte) -65, (byte) 35, (byte) 89, (byte) -79, (byte) 32, (byte) -38, (byte) 46, (byte) 26, (byte) -43, (byte) -38, (byte) -34, (byte) 113, (byte) 11, (byte) -32, (byte) 64, (byte) -89};
    private static final String TAG = "DroidBTCManagerActivity";
    private static final DateFormat logDateFormat = new SimpleDateFormat("[yyyy-MM-dd HH:mm:ss] ");
    public final String BASE64_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAogwSPUbiiafJmn6LEiqX2Cz++eJv47B6CWr7b2FPY1OTkCVj89XMJ0zkf4XlDFCVvWL66Vqg09OfjFVfHptaCS9y+gwAc6d4iWBdzkubixcKD76GhZ1GtClTZ0Cq1QdpCSpD5h5b3Srd9VaJqG130wOg15sXo278WPWjJRkEZP247eG0MjhKm0qtXBH75uxGdAjfALrtIvYh+CF2f27/kaeqzt8SR1tBjjZ5TZr1HqUSvDle2wzNpb9StMnlaNPjqGKxJ5JGcNhQdkbgUy8oK/XTCD0Q+wGi8xn12PgPq9QxUCt7IS0qlGBKroRclBSsYgvYNVxa4033orf1hNYv9QIDAQAB";
    EditText Cred;
    String CredText;
    public final String DEFAULT_TYPE = "ARM (default)";
    private String Minerd;
    EditText URL;
    String URLText;
    public String currentLine;
    String deviceId;
    public boolean downloaded;
    EditText ePassword;
    EditText eUser;
    Editor editor;
    boolean finished;
    double[] hashrate;
    LicenseChecker mChecker;
    private Handler mHandler;
    public final int mId = 314;
    private LicenseCheckerCallback mLicenseCheckerCallback;
    NotificationManager mNotificationManager;
    ProgressDialog mProgressDialog;
    String minerd;
    String minerdType;
    Notification note;
    public boolean noteIsOn;
    Builder notebuilder;
    /* renamed from: p */
    ProgressDialog f1p;
    EditText port;
    private Process process;
    RadioButton rBitcoin;
    RadioButton rLitecoin;
    Intent resultIntent;
    Runnable runnable = new C00404();
    boolean scrypt;
    SharedPreferences settings;
    Spinner sminerdType;
    Button startMining;
    Button stopMining;
    String str1;
    Activity thisActivity;
    Spinner threadList;
    BigDecimal totalHashrate;
    String typeMinerd;
    /* renamed from: v */
    Void f2v;
    WakeLock wakelock;

    /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$1 */
    class C00361 implements OnClickListener {
        C00361() {
        }

        public void onClick(DialogInterface dialog, int which) {
            switch (which) {
                case -1:
                    if (AndLTCMinerPROActivity.this.process != null) {
                        AndLTCMinerPROActivity.this.process.destroy();
                    }
                    if (AndLTCMinerPROActivity.this.noteIsOn) {
                        AndLTCMinerPROActivity.this.mNotificationManager.cancel(314);
                    }
                    AndLTCMinerPROActivity.this.finish();
                    System.exit(0);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$2 */
    class C00372 implements View.OnClickListener {
        C00372() {
        }

        public void onClick(View v) {
            int i = 1;
            Spinner threadList = (Spinner) AndLTCMinerPROActivity.this.findViewById(C0035R.id.spinner1);
            AndLTCMinerPROActivity.this.URL = (EditText) AndLTCMinerPROActivity.this.findViewById(C0035R.id.editText1);
            ((TextView) AndLTCMinerPROActivity.this.findViewById(C0035R.id.textView1)).setText("");
            AndLTCMinerPROActivity.this.URLText = AndLTCMinerPROActivity.this.URL.getText().toString();
            AndLTCMinerPROActivity.this.CredText = AndLTCMinerPROActivity.this.eUser.getText().toString() + ":" + AndLTCMinerPROActivity.this.ePassword.getText().toString();
            boolean abc = AndLTCMinerPROActivity.this.checkMinerd(AndLTCMinerPROActivity.this.minerd);
            AndLTCMinerPROActivity.this.wakelock.acquire();
            AndLTCMinerPROActivity.this.disableUi();
            Log.i("DroidBtc.UI", "UI elements disabled");
            int i2 = AndLTCMinerPROActivity.this.eUser.getText().toString() == "" ? 1 : 0;
            if (AndLTCMinerPROActivity.this.ePassword.getText().toString() != "") {
                i = 0;
            }
            if ((i2 | i) != 0) {
                Toast.makeText(AndLTCMinerPROActivity.this.getApplicationContext(), "Username or password cannot be blank.", 0).show();
                try {
                    AndLTCMinerPROActivity.this.process.destroy();
                    AndLTCMinerPROActivity.this.enableUi();
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$3 */
    class C00383 implements View.OnClickListener {
        C00383() {
        }

        public void onClick(View v) {
            try {
                AndLTCMinerPROActivity.this.process.destroy();
                AndLTCMinerPROActivity.this.enableUi();
                AndLTCMinerPROActivity.this.port.setEnabled(true);
                AndLTCMinerPROActivity.this.wakelock.release();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$4 */
    class C00404 implements Runnable {

        /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$4$1 */
        class C00391 implements OnClickListener {
            C00391() {
            }

            public void onClick(DialogInterface dialog, int which) {
                AndLTCMinerPROActivity.this.finish();
            }
        }

        C00404() {
        }

        public void run() {
            if (AndLTCMinerPROActivity.this.isOnline()) {
                AndLTCMinerPROActivity.this.setThreads();
                AndLTCMinerPROActivity.this.setUI();
                return;
            }
            AlertDialog alertDialog = new AlertDialog.Builder(AndLTCMinerPROActivity.this).create();
            alertDialog.setTitle("No Internet Connection");
            alertDialog.setMessage("An Internet connection is required to mine.");
            alertDialog.setButton("OK", new C00391());
            alertDialog.show();
        }
    }

    /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$5 */
    class C00415 implements OnClickListener {
        C00415() {
        }

        public void onClick(DialogInterface dialog, int id) {
            AndLTCMinerPROActivity.this.log(AndLTCMinerPROActivity.logDateFormat.format(new Date()) + String.format("%1$s doesn't exist. Downloading...", new Object[]{AndLTCMinerPROActivity.this.Minerd}));
            DownloadFile a = new DownloadFile();
            AndLTCMinerPROActivity.this.finished = false;
            a.execute(new Void[0]);
            AndLTCMinerPROActivity.this.typeMinerd = "minerd";
        }
    }

    /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$6 */
    class C00426 implements OnClickListener {
        C00426() {
        }

        public void onClick(DialogInterface dialog, int id) {
            dialog.cancel();
            try {
                if (AndLTCMinerPROActivity.this.process != null) {
                    AndLTCMinerPROActivity.this.process.destroy();
                }
                AndLTCMinerPROActivity.this.wakelock.release();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$9 */
    class C00469 implements Runnable {
        C00469() {
        }

        public void run() {
            AndLTCMinerPROActivity.this.thisActivity.setTitle(AndLTCMinerPROActivity.this.str1);
        }
    }

    private class DownloadFile extends AsyncTask<Void, Integer, String> {
        private DownloadFile() {
        }

        protected void onPreExecute() {
            super.onPreExecute();
            AndLTCMinerPROActivity.this.mProgressDialog.setCancelable(false);
            AndLTCMinerPROActivity.this.mProgressDialog.show();
        }

        protected String doInBackground(Void... void1) {
            try {
                InputStream input = AndLTCMinerPROActivity.this.getResources().openRawResource(C0035R.raw.minerd);
                int fileLength = input.available();
                OutputStream output = new FileOutputStream(String.format("%1$s/%2$s", new Object[]{AndLTCMinerPROActivity.this.appPath(), AndLTCMinerPROActivity.this.typeMinerd}));
                byte[] data = new byte[1024];
                long total = 0;
                while (true) {
                    int count = input.read(data);
                    if (count != -1) {
                        total += (long) count;
                        publishProgress(new Integer[]{Integer.valueOf((int) ((100 * total) / ((long) fileLength)))});
                        output.write(data, 0, count);
                    } else {
                        output.flush();
                        output.close();
                        input.close();
                        AndLTCMinerPROActivity.this.runCommand(String.format("chmod 744 %1$s/%2$s", new Object[]{AndLTCMinerPROActivity.this.appPath(), AndLTCMinerPROActivity.this.typeMinerd}));
                        return "poop";
                    }
                }
            } catch (Exception e) {
                AndLTCMinerPROActivity.this.finished = true;
                return "poop";
            }
        }

        protected void onProgressUpdate(Integer... progress) {
            super.onProgressUpdate(progress);
            AndLTCMinerPROActivity.this.mProgressDialog.setProgress(progress[0].intValue());
        }

        protected void onPostExecute(String result) {
            int i;
            super.onPostExecute(result);
            AndLTCMinerPROActivity.this.mProgressDialog.cancel();
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                if (e.getMessage() != null) {
                    i = 1;
                } else {
                    i = 0;
                }
                if ((i | (e.getMessage() != "" ? 1 : 0)) != 0) {
                    Log.i("DROIDBTC EXCEPTION", e.getMessage());
                }
            }
            AndLTCMinerPROActivity.this.startMiner(AndLTCMinerPROActivity.this.URLText, AndLTCMinerPROActivity.this.CredText, AndLTCMinerPROActivity.this.threadList.getSelectedItem().toString());
            AndLTCMinerPROActivity.this.startMining.setEnabled(false);
            AndLTCMinerPROActivity.this.stopMining.setEnabled(true);
            AndLTCMinerPROActivity.this.editor.putString("username", AndLTCMinerPROActivity.this.eUser.getText().toString());
            AndLTCMinerPROActivity.this.editor.putString("password", AndLTCMinerPROActivity.this.ePassword.getText().toString());
            AndLTCMinerPROActivity.this.editor.putString("url", AndLTCMinerPROActivity.this.URL.getText().toString());
            AndLTCMinerPROActivity.this.editor.commit();
            AndLTCMinerPROActivity.this.showNote();
        }
    }

    private class MyLicenseCheckerCallback implements LicenseCheckerCallback {

        /* renamed from: com.simran.andltcminerpro.AndLTCMinerPROActivity$MyLicenseCheckerCallback$1 */
        class C00471 implements Runnable {
            C00471() {
            }

            public void run() {
                Toast.makeText(AndLTCMinerPROActivity.this.getApplicationContext(), "You are a pirate. Please cease the usage of my app.", 0).show();
                AndLTCMinerPROActivity.this.finish();
                System.exit(0);
            }
        }

        private MyLicenseCheckerCallback() {
        }

        public void allow(int reason) {
            if (!AndLTCMinerPROActivity.this.isFinishing()) {
                displayResult("License verified.");
            }
        }

        public void dontAllow(int reason) {
            if (!AndLTCMinerPROActivity.this.isFinishing()) {
                if (reason == Policy.RETRY) {
                    displayResult("License not verified. Please try again.");
                    return;
                }
                displayResult("License not verified. You are a pirate. Go away.");
                AndLTCMinerPROActivity.this.mHandler.post(new C00471());
            }
        }

        private void displayResult(final String result) {
            AndLTCMinerPROActivity.this.mHandler.post(new Runnable() {
                public void run() {
                    Toast.makeText(AndLTCMinerPROActivity.this.getApplicationContext(), result, 0).show();
                }
            });
        }

        public void applicationError(int errorCode) {
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C0035R.menu.menu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case C0035R.id.exit:
                OnClickListener dialogClickListener = new C00361();
                new AlertDialog.Builder(this).setMessage("Are you sure you want to exit?").setPositiveButton("Yes", dialogClickListener).setNegativeButton("No", dialogClickListener).show();
                break;
        }
        return true;
    }

    public void onCreate(Bundle savedInstanceState) {
        this.hashrate = new double[8];
        for (double b : this.hashrate) {
        }
        this.totalHashrate = new BigDecimal(0);
        this.threadList = (Spinner) findViewById(C0035R.id.spinner1);
        this.deviceId = Secure.getString(getContentResolver(), "android_id");
        this.wakelock = ((PowerManager) getApplicationContext().getSystemService("power")).newWakeLock(536870918, TAG);
        this.thisActivity = this;
        this.mHandler = new Handler();
        this.eUser = (EditText) findViewById(C0035R.id.username1);
        this.ePassword = (EditText) findViewById(C0035R.id.password1);
        this.f2v = null;
        super.onCreate(savedInstanceState);
        setContentView(C0035R.layout.main);
        this.currentLine = "";
        this.noteIsOn = false;
        this.settings = getSharedPreferences(PREFS_NAME, 0);
        this.mChecker = new LicenseChecker(this, new ServerManagedPolicy(this, new AESObfuscator(SALT, getPackageName(), this.deviceId)), "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAogwSPUbiiafJmn6LEiqX2Cz++eJv47B6CWr7b2FPY1OTkCVj89XMJ0zkf4XlDFCVvWL66Vqg09OfjFVfHptaCS9y+gwAc6d4iWBdzkubixcKD76GhZ1GtClTZ0Cq1QdpCSpD5h5b3Srd9VaJqG130wOg15sXo278WPWjJRkEZP247eG0MjhKm0qtXBH75uxGdAjfALrtIvYh+CF2f27/kaeqzt8SR1tBjjZ5TZr1HqUSvDle2wzNpb9StMnlaNPjqGKxJ5JGcNhQdkbgUy8oK/XTCD0Q+wGi8xn12PgPq9QxUCt7IS0qlGBKroRclBSsYgvYNVxa4033orf1hNYv9QIDAQAB");
        setRequestedOrientation(1);
        this.mProgressDialog = new ProgressDialog(this);
        this.mProgressDialog.setMessage("Extracting miner...");
        this.mProgressDialog.setIndeterminate(false);
        this.mProgressDialog.setMax(100);
        this.mProgressDialog.setProgressStyle(1);
        setContentView(C0035R.layout.main);
        this.notebuilder = new Builder(getApplicationContext()).setContentTitle("DroidBTC Bitcoin Miner").setContentText("DroidBTC Miner is mining...").setSmallIcon(C0035R.drawable.ic_launcher).setLargeIcon(BitmapFactory.decodeResource(getApplicationContext().getResources(), C0035R.drawable.ic_launcher));
        this.editor = this.settings.edit();
        new Handler().postDelayed(this.runnable, 1);
        ((EditText) findViewById(C0035R.id.editText1)).setText(this.settings.getString("url", ""));
        EditText user = (EditText) findViewById(C0035R.id.username1);
        EditText pass = (EditText) findViewById(C0035R.id.password1);
        user.setText(this.settings.getString("username", ""));
        pass.setText(this.settings.getString("password", ""));
        EditText port = (EditText) findViewById(C0035R.id.editText);
        int abc = this.settings.getInt("port", 0);
        if (abc != 0) {
            port.setText(Integer.toString(abc));
        }
        this.eUser = user;
        this.ePassword = pass;
        this.rBitcoin = (RadioButton) findViewById(C0035R.id.radioButton);
        this.rLitecoin = (RadioButton) findViewById(C0035R.id.radioButton2);
        this.scrypt = this.settings.getBoolean("scrypt", false);
        if (this.scrypt) {
            this.rLitecoin.setChecked(true);
            this.rBitcoin.setChecked(false);
        }
        if (!this.scrypt) {
            this.rBitcoin.setChecked(true);
            this.rLitecoin.setChecked(false);
        }
    }

    String appPath() {
        String s = null;
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).applicationInfo.dataDir;
        } catch (Exception ex) {
            log(ex.getMessage());
            return s;
        }
    }

    public void onDestroy() {
        super.onDestroy();
        try {
            this.process.destroy();
        } catch (Exception e) {
        }
    }

    void setThreads() {
        try {
            this.threadList = (Spinner) findViewById(C0035R.id.spinner1);
            String[] threadsAvailable = new String[Runtime.getRuntime().availableProcessors()];
            for (int i = 0; i <= Runtime.getRuntime().availableProcessors(); i++) {
                threadsAvailable[i] = Integer.toString(i + 1);
                this.threadList.setAdapter(new ArrayAdapter(this, 17367048, threadsAvailable));
            }
        } catch (Exception e) {
        }
    }

    void setUI() {
        this.startMining = (Button) findViewById(C0035R.id.button1);
        this.stopMining = (Button) findViewById(C0035R.id.button2);
        this.startMining.setOnClickListener(new C00372());
        this.stopMining.setOnClickListener(new C00383());
    }

    boolean isOnline() {
        NetworkInfo netInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (netInfo == null || !netInfo.isConnectedOrConnecting()) {
            return false;
        }
        return true;
    }

    void startMiner(String URL, String Auth, String Threads) {
        main(new String[]{URL, Auth, Threads});
    }

    boolean checkMinerd(String minerdType) {
        this.Minerd = "minerd";
        try {
            if (new File(appPath() + String.format("/%1$s", new Object[]{this.Minerd})).exists()) {
                log(logDateFormat.format(new Date()) + String.format("%1$s is present.", new Object[]{this.Minerd}));
                startMiner(this.URLText, this.CredText, this.threadList.getSelectedItem().toString());
                this.startMining.setEnabled(false);
                this.stopMining.setEnabled(true);
                this.editor.putString("username", this.eUser.getText().toString());
                this.editor.putString("password", this.ePassword.getText().toString());
                this.editor.putString("url", this.URL.getText().toString());
                this.editor.putBoolean("scrypt", this.scrypt);
                this.editor.commit();
                showNote();
                return true;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.thisActivity);
            builder.setPositiveButton("Yes", new C00415());
            builder.setNegativeButton("No", new C00426());
            builder.setMessage("Miner not extracted. Extract miner?");
            builder.create().show();
            return false;
        } catch (Exception e) {
            log(e.getMessage());
            return false;
        }
    }

    void Miner(String minerdType, final String url, final String auth, final int nThread) {
        this.Minerd = "minerd";
        new Thread() {
            public void run() {
                int port;
                String url1;
                EditText e = (EditText) AndLTCMinerPROActivity.this.findViewById(C0035R.id.editText);
                try {
                    port = Integer.parseInt(e.getText().toString());
                } catch (Exception e2) {
                    e.setText("3333");
                    port = 3333;
                }
                try {
                    if (url.toLowerCase().contains("://")) {
                        url1 = InetAddress.getByName(url.split("://")[1]).getHostAddress();
                    } else {
                        url1 = InetAddress.getByName(url).getHostAddress();
                    }
                } catch (UnknownHostException f) {
                    Log.i(AndLTCMinerPROActivity.TAG, f.getMessage());
                    url1 = "";
                }
                AndLTCMinerPROActivity.this.editor.putInt("port", port);
                AndLTCMinerPROActivity.this.editor.commit();
                try {
                    AndLTCMinerPROActivity andLTCMinerPROActivity;
                    ProcessBuilder directory;
                    String[] strArr;
                    if (AndLTCMinerPROActivity.this.scrypt) {
                        andLTCMinerPROActivity = AndLTCMinerPROActivity.this;
                        directory = new ProcessBuilder(new String[0]).directory(new File(AndLTCMinerPROActivity.this.appPath()));
                        strArr = new String[5];
                        strArr[0] = String.format("./%1$s", new Object[]{AndLTCMinerPROActivity.this.Minerd});
                        strArr[1] = String.format("--algo=%1$s", new Object[]{"scrypt"});
                        strArr[2] = String.format("--url=stratum+tcp://%1$s:%2$s", new Object[]{url1, Integer.toString(port)});
                        strArr[3] = String.format("--userpass=%1$s", new Object[]{auth});
                        strArr[4] = String.format("--threads=%1$s", new Object[]{Integer.toString(nThread)});
                        andLTCMinerPROActivity.process = directory.command(strArr).redirectErrorStream(true).start();
                    }
                    if (!AndLTCMinerPROActivity.this.scrypt) {
                        andLTCMinerPROActivity = AndLTCMinerPROActivity.this;
                        directory = new ProcessBuilder(new String[0]).directory(new File(AndLTCMinerPROActivity.this.appPath()));
                        strArr = new String[5];
                        strArr[0] = String.format("./%1$s", new Object[]{AndLTCMinerPROActivity.this.Minerd});
                        strArr[1] = String.format("--algo=%1$s", new Object[]{"sha256d"});
                        strArr[2] = String.format("--url=stratum+tcp://%1$s:%2$s", new Object[]{url1, Integer.toString(port)});
                        strArr[3] = String.format("--userpass=%1$s", new Object[]{auth});
                        strArr[4] = String.format("--threads=%1$s", new Object[]{Integer.toString(nThread)});
                        andLTCMinerPROActivity.process = directory.command(strArr).redirectErrorStream(true).start();
                    }
                    BufferedReader ins = new BufferedReader(new InputStreamReader(AndLTCMinerPROActivity.this.process.getInputStream()));
                    while (true) {
                        String line = ins.readLine();
                        if (line != null) {
                            AndLTCMinerPROActivity.this.log(line);
                        } else {
                            AndLTCMinerPROActivity.this.process.destroy();
                            return;
                        }
                    }
                } catch (Exception ex) {
                    AndLTCMinerPROActivity.this.log(ex.getMessage());
                } catch (Throwable th) {
                    AndLTCMinerPROActivity.this.process.destroy();
                }
            }
        }.start();
    }

    void Download(String URL, String fileName) {
        try {
            URL url = new URL(URL);
            File file = new File(fileName);
            BufferedInputStream bis = new BufferedInputStream(url.openConnection().getInputStream());
            ByteArrayBuffer baf = new ByteArrayBuffer(50);
            while (true) {
                int current = bis.read();
                if (current != -1) {
                    baf.append((byte) current);
                } else {
                    FileOutputStream fos = new FileOutputStream(file);
                    fos.write(baf.toByteArray());
                    fos.close();
                    return;
                }
            }
        } catch (IOException e) {
            log("Error: " + e);
        }
    }

    public void main(String[] args) {
        String url = null;
        String auth = null;
        int nThread = 1;
        this.minerdType = null;
        if (args.length > 0) {
            url = args[0];
        }
        if (args.length > 1) {
            auth = args[1];
        }
        if (args.length > 2) {
            nThread = Integer.parseInt(args[2]);
        }
        if (args.length > 3) {
            this.minerdType = args[3];
        }
        try {
            Miner(this.minerdType, url, auth, nThread);
        } catch (Exception e) {
            log(e.getMessage());
        }
    }

    void log(final String str) {
        int i;
        int i2;
        if (str == null) {
            i = 1;
        } else {
            i = 0;
        }
        if (str == "") {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if ((i | i2) == 0) {
            Log.i("DroidBtc.Log", str);
            runOnUiThread(new Runnable() {
                public void run() {
                    TextView Console = (TextView) AndLTCMinerPROActivity.this.findViewById(C0035R.id.textView1);
                    Console.setTextColor(-16777216);
                    Console.append(str + "\n");
                    final ScrollView scrollview = (ScrollView) AndLTCMinerPROActivity.this.findViewById(C0035R.id.scrollView1);
                    scrollview.post(new Runnable() {
                        public void run() {
                            scrollview.fullScroll(130);
                        }
                    });
                }
            });
            if (this.noteIsOn) {
                if (str.contains("khash/s")) {
                    this.str1 = String.format("%.2f", new Object[]{Double.valueOf(parseHashrate(str))}) + " khash/s";
                    this.thisActivity.runOnUiThread(new C00469());
                } else {
                    this.str1 = str;
                }
                this.mNotificationManager.notify(314, this.notebuilder.setContentText(this.str1).build());
            }
            if (str.contains("minerd --help")) {
                log("Failed to start miner.");
            }
        }
    }

    void runCommand(String command) {
        try {
            Runtime.getRuntime().exec(command);
        } catch (IOException ex) {
            log(ex.getMessage());
        }
    }

    public void onStop(Bundle bundle) {
        if (this.process != null) {
            this.process = null;
        }
        super.onStop();
    }

    public void showNote() {
        this.noteIsOn = true;
        this.resultIntent = new Intent(this, AndLTCMinerPROActivity.class);
        Intent toLaunch = new Intent(getApplicationContext(), AndLTCMinerPROActivity.class);
        toLaunch.setAction("android.intent.action.MAIN");
        PendingIntent resultPendingIntent = PendingIntent.getActivity(getApplicationContext(), 0, toLaunch, 134217728);
        this.resultIntent.setAction("android.intent.action.MAIN");
        this.resultIntent.addCategory("android.intent.category.LAUNCHER");
        this.notebuilder.setContentIntent(resultPendingIntent);
        this.notebuilder.setOngoing(true);
        this.note = this.notebuilder.build();
        Notification notification = this.note;
        notification.flags |= 2;
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        this.mNotificationManager.notify(314, this.note);
    }

    public void onRadioButtonClicked(View v) {
        boolean checked = ((RadioButton) v).isChecked();
        switch (v.getId()) {
            case C0035R.id.radioButton:
                if (checked) {
                    this.rLitecoin.setChecked(false);
                    this.scrypt = false;
                    return;
                }
                return;
            case C0035R.id.radioButton2:
                if (checked) {
                    this.rBitcoin.setChecked(false);
                    this.scrypt = true;
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void disableUi() {
        this.URL.setEnabled(false);
        this.eUser.setEnabled(false);
        this.ePassword.setEnabled(false);
        ((EditText) findViewById(C0035R.id.editText)).setEnabled(false);
        this.threadList.setEnabled(false);
    }

    public void enableUi() {
        this.startMining.setEnabled(true);
        this.stopMining.setEnabled(false);
        log(logDateFormat.format(new Date()) + "Stopping miner...");
        this.mNotificationManager.cancel(314);
        this.noteIsOn = false;
        this.URL.setEnabled(true);
        this.eUser.setEnabled(true);
        this.ePassword.setEnabled(true);
        this.threadList.setEnabled(true);
        ((EditText) findViewById(C0035R.id.editText)).setEnabled(true);
        this.thisActivity.runOnUiThread(new Runnable() {
            public void run() {
                AndLTCMinerPROActivity.this.thisActivity.setTitle("DroidMiner");
            }
        });
    }

    public double parseHashrate(String str) {
        BigDecimal abc = new BigDecimal(0);
        String a4 = str.split(",")[1].split("k")[0].replaceAll(" ", "");
        if (str.contains("thread 0")) {
            this.hashrate[0] = Double.parseDouble(a4);
        }
        if (str.contains("thread 1")) {
            this.hashrate[1] = Double.parseDouble(a4);
        }
        if (str.contains("thread 2")) {
            this.hashrate[2] = Double.parseDouble(a4);
        }
        if (str.contains("thread 3")) {
            this.hashrate[3] = Double.parseDouble(a4);
        }
        if (str.contains("thread 4")) {
            this.hashrate[4] = Double.parseDouble(a4);
        }
        if (str.contains("thread 5")) {
            this.hashrate[5] = Double.parseDouble(a4);
        }
        if (str.contains("thread 6")) {
            this.hashrate[6] = Double.parseDouble(a4);
        }
        if (str.contains("thread 7")) {
            this.hashrate[7] = Double.parseDouble(a4);
        }
        double sum = 0.0d;
        for (double d : this.hashrate) {
            sum += d;
        }
        abc = BigDecimal.valueOf(sum);
        Log.i("DroidMiner hashrate ", a4 + " khash/s - this is the string hashrate");
        Log.i("Droidminer hashrate ", sum + " khash/s - this is the double hashrate");
        Log.i("Droidminer hashrate ", this.totalHashrate.toString() + " khash/s - this is the BigDecimal hashrate");
        return sum;
    }
}
