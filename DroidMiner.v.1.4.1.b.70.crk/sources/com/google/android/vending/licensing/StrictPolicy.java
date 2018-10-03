package com.google.android.vending.licensing;

public class StrictPolicy implements Policy {
    private int mLastResponse = Policy.RETRY;

    public void processServerResponse(int response, ResponseData rawData) {
        this.mLastResponse = response;
    }

    public boolean allowAccess() {
        return this.mLastResponse == 256;
    }
}
