package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

public class NotificationCompat {
    public static final int FLAG_HIGH_PRIORITY = 128;
    private static final NotificationCompatImpl IMPL;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;

    public static class Action {
        public PendingIntent actionIntent;
        public int icon;
        public CharSequence title;

        public Action(int icon_, CharSequence title_, PendingIntent intent_) {
            this.icon = icon_;
            this.title = title_;
            this.actionIntent = intent_;
        }
    }

    public static class Builder {
        ArrayList<Action> mActions = new ArrayList();
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        Context mContext;
        PendingIntent mFullScreenIntent;
        Bitmap mLargeIcon;
        Notification mNotification = new Notification();
        int mNumber;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        boolean mUseChronometer;

        public Builder(Context context) {
            this.mContext = context;
            this.mNotification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
        }

        public Builder setWhen(long when) {
            this.mNotification.when = when;
            return this;
        }

        public Builder setUsesChronometer(boolean b) {
            this.mUseChronometer = b;
            return this;
        }

        public Builder setSmallIcon(int icon) {
            this.mNotification.icon = icon;
            return this;
        }

        public Builder setSmallIcon(int icon, int level) {
            this.mNotification.icon = icon;
            this.mNotification.iconLevel = level;
            return this;
        }

        public Builder setContentTitle(CharSequence title) {
            this.mContentTitle = title;
            return this;
        }

        public Builder setContentText(CharSequence text) {
            this.mContentText = text;
            return this;
        }

        public Builder setSubText(CharSequence text) {
            this.mSubText = text;
            return this;
        }

        public Builder setNumber(int number) {
            this.mNumber = number;
            return this;
        }

        public Builder setContentInfo(CharSequence info) {
            this.mContentInfo = info;
            return this;
        }

        public Builder setProgress(int max, int progress, boolean indeterminate) {
            this.mProgressMax = max;
            this.mProgress = progress;
            this.mProgressIndeterminate = indeterminate;
            return this;
        }

        public Builder setContent(RemoteViews views) {
            this.mNotification.contentView = views;
            return this;
        }

        public Builder setContentIntent(PendingIntent intent) {
            this.mContentIntent = intent;
            return this;
        }

        public Builder setDeleteIntent(PendingIntent intent) {
            this.mNotification.deleteIntent = intent;
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent intent, boolean highPriority) {
            this.mFullScreenIntent = intent;
            setFlag(128, highPriority);
            return this;
        }

        public Builder setTicker(CharSequence tickerText) {
            this.mNotification.tickerText = tickerText;
            return this;
        }

        public Builder setTicker(CharSequence tickerText, RemoteViews views) {
            this.mNotification.tickerText = tickerText;
            this.mTickerView = views;
            return this;
        }

        public Builder setLargeIcon(Bitmap icon) {
            this.mLargeIcon = icon;
            return this;
        }

        public Builder setSound(Uri sound) {
            this.mNotification.sound = sound;
            this.mNotification.audioStreamType = -1;
            return this;
        }

        public Builder setSound(Uri sound, int streamType) {
            this.mNotification.sound = sound;
            this.mNotification.audioStreamType = streamType;
            return this;
        }

        public Builder setVibrate(long[] pattern) {
            this.mNotification.vibrate = pattern;
            return this;
        }

        public Builder setLights(int argb, int onMs, int offMs) {
            boolean showLights;
            int i = 1;
            this.mNotification.ledARGB = argb;
            this.mNotification.ledOnMS = onMs;
            this.mNotification.ledOffMS = offMs;
            if (this.mNotification.ledOnMS == 0 || this.mNotification.ledOffMS == 0) {
                showLights = false;
            } else {
                showLights = true;
            }
            Notification notification = this.mNotification;
            int i2 = this.mNotification.flags & -2;
            if (!showLights) {
                i = 0;
            }
            notification.flags = i | i2;
            return this;
        }

        public Builder setOngoing(boolean ongoing) {
            setFlag(2, ongoing);
            return this;
        }

        public Builder setOnlyAlertOnce(boolean onlyAlertOnce) {
            setFlag(8, onlyAlertOnce);
            return this;
        }

        public Builder setAutoCancel(boolean autoCancel) {
            setFlag(16, autoCancel);
            return this;
        }

        public Builder setDefaults(int defaults) {
            this.mNotification.defaults = defaults;
            if ((defaults & 4) != 0) {
                Notification notification = this.mNotification;
                notification.flags |= 1;
            }
            return this;
        }

        private void setFlag(int mask, boolean value) {
            if (value) {
                Notification notification = this.mNotification;
                notification.flags |= mask;
                return;
            }
            notification = this.mNotification;
            notification.flags &= mask ^ -1;
        }

        public Builder setPriority(int pri) {
            this.mPriority = pri;
            return this;
        }

        public Builder addAction(int icon, CharSequence title, PendingIntent intent) {
            this.mActions.add(new Action(icon, title, intent));
            return this;
        }

        public Builder setStyle(Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (this.mStyle != null) {
                    this.mStyle.setBuilder(this);
                }
            }
            return this;
        }

        @Deprecated
        public Notification getNotification() {
            return NotificationCompat.IMPL.build(this);
        }

        public Notification build() {
            return NotificationCompat.IMPL.build(this);
        }
    }

    interface NotificationCompatImpl {
        Notification build(Builder builder);
    }

    public static abstract class Style {
        CharSequence mBigContentTitle;
        Builder mBuilder;
        CharSequence mSummaryText;
        boolean mSummaryTextSet = false;

        public void setBuilder(Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (this.mBuilder != null) {
                    this.mBuilder.setStyle(this);
                }
            }
        }

        public Notification build() {
            if (this.mBuilder != null) {
                return this.mBuilder.build();
            }
            return null;
        }
    }

    public static class BigPictureStyle extends Style {
        Bitmap mPicture;

        public BigPictureStyle(Builder builder) {
            setBuilder(builder);
        }

        public BigPictureStyle setBigContentTitle(CharSequence title) {
            this.mBigContentTitle = title;
            return this;
        }

        public BigPictureStyle setSummaryText(CharSequence cs) {
            this.mSummaryText = cs;
            this.mSummaryTextSet = true;
            return this;
        }

        public BigPictureStyle bigPicture(Bitmap b) {
            this.mPicture = b;
            return this;
        }
    }

    public static class BigTextStyle extends Style {
        CharSequence mBigText;

        public BigTextStyle(Builder builder) {
            setBuilder(builder);
        }

        public BigTextStyle setBigContentTitle(CharSequence title) {
            this.mBigContentTitle = title;
            return this;
        }

        public BigTextStyle setSummaryText(CharSequence cs) {
            this.mSummaryText = cs;
            this.mSummaryTextSet = true;
            return this;
        }

        public BigTextStyle bigText(CharSequence cs) {
            this.mBigText = cs;
            return this;
        }
    }

    public static class InboxStyle extends Style {
        ArrayList<CharSequence> mTexts = new ArrayList();

        public InboxStyle(Builder builder) {
            setBuilder(builder);
        }

        public InboxStyle setBigContentTitle(CharSequence title) {
            this.mBigContentTitle = title;
            return this;
        }

        public InboxStyle setSummaryText(CharSequence cs) {
            this.mSummaryText = cs;
            this.mSummaryTextSet = true;
            return this;
        }

        public InboxStyle addLine(CharSequence cs) {
            this.mTexts.add(cs);
            return this;
        }
    }

    static class NotificationCompatImplBase implements NotificationCompatImpl {
        NotificationCompatImplBase() {
        }

        public Notification build(Builder b) {
            Notification result = b.mNotification;
            result.setLatestEventInfo(b.mContext, b.mContentTitle, b.mContentText, b.mContentIntent);
            if (b.mPriority > 0) {
                result.flags |= 128;
            }
            return result;
        }
    }

    static class NotificationCompatImplHoneycomb implements NotificationCompatImpl {
        NotificationCompatImplHoneycomb() {
        }

        public Notification build(Builder b) {
            return NotificationCompatHoneycomb.add(b.mContext, b.mNotification, b.mContentTitle, b.mContentText, b.mContentInfo, b.mTickerView, b.mNumber, b.mContentIntent, b.mFullScreenIntent, b.mLargeIcon);
        }
    }

    static class NotificationCompatImplIceCreamSandwich implements NotificationCompatImpl {
        NotificationCompatImplIceCreamSandwich() {
        }

        public Notification build(Builder b) {
            return NotificationCompatIceCreamSandwich.add(b.mContext, b.mNotification, b.mContentTitle, b.mContentText, b.mContentInfo, b.mTickerView, b.mNumber, b.mContentIntent, b.mFullScreenIntent, b.mLargeIcon, b.mProgressMax, b.mProgress, b.mProgressIndeterminate);
        }
    }

    static class NotificationCompatImplJellybean implements NotificationCompatImpl {
        NotificationCompatImplJellybean() {
        }

        public Notification build(Builder b) {
            NotificationCompatJellybean jbBuilder = new NotificationCompatJellybean(b.mContext, b.mNotification, b.mContentTitle, b.mContentText, b.mContentInfo, b.mTickerView, b.mNumber, b.mContentIntent, b.mFullScreenIntent, b.mLargeIcon, b.mProgressMax, b.mProgress, b.mProgressIndeterminate, b.mUseChronometer, b.mPriority, b.mSubText);
            Iterator i$ = b.mActions.iterator();
            while (i$.hasNext()) {
                Action action = (Action) i$.next();
                jbBuilder.addAction(action.icon, action.title, action.actionIntent);
            }
            if (b.mStyle != null) {
                if (b.mStyle instanceof BigTextStyle) {
                    BigTextStyle style = (BigTextStyle) b.mStyle;
                    jbBuilder.addBigTextStyle(style.mBigContentTitle, style.mSummaryTextSet, style.mSummaryText, style.mBigText);
                } else if (b.mStyle instanceof InboxStyle) {
                    InboxStyle style2 = (InboxStyle) b.mStyle;
                    jbBuilder.addInboxStyle(style2.mBigContentTitle, style2.mSummaryTextSet, style2.mSummaryText, style2.mTexts);
                } else if (b.mStyle instanceof BigPictureStyle) {
                    BigPictureStyle style3 = (BigPictureStyle) b.mStyle;
                    jbBuilder.addBigPictureStyle(style3.mBigContentTitle, style3.mSummaryTextSet, style3.mSummaryText, style3.mPicture);
                }
            }
            return jbBuilder.build();
        }
    }

    static {
        if (VERSION.SDK_INT >= 16) {
            IMPL = new NotificationCompatImplJellybean();
        } else if (VERSION.SDK_INT >= 14) {
            IMPL = new NotificationCompatImplIceCreamSandwich();
        } else if (VERSION.SDK_INT >= 11) {
            IMPL = new NotificationCompatImplHoneycomb();
        } else {
            IMPL = new NotificationCompatImplBase();
        }
    }
}
