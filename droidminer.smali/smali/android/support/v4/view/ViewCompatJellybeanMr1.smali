.class public Landroid/support/v4/view/ViewCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "ViewCompatJellybeanMr1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result v0

    return v0
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    .line 32
    return-void
.end method
