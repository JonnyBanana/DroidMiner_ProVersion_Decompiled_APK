.class public interface abstract Lcom/google/android/vending/licensing/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field public static final LICENSED:I = 0x100

.field public static final NOT_LICENSED:I = 0x231

.field public static final RETRY:I = 0x123


# virtual methods
.method public abstract allowAccess()Z
.end method

.method public abstract processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
.end method
