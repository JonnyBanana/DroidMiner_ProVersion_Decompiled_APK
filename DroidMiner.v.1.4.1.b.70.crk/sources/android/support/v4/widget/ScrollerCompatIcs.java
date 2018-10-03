package android.support.v4.widget;

import android.widget.Scroller;

class ScrollerCompatIcs {
    ScrollerCompatIcs() {
    }

    public static float getCurrVelocity(Scroller scroller) {
        return scroller.getCurrVelocity();
    }
}
