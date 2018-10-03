package android.support.v4.content;

import android.content.Context;
import android.content.Intent;

class ContextCompatHoneycomb {
    ContextCompatHoneycomb() {
    }

    static void startActivities(Context context, Intent[] intents) {
        context.startActivities(intents);
    }
}
