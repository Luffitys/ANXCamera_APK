.class public Lmiui/widget/ProgressBarHelper;
.super Ljava/lang/Object;
.source "ProgressBarHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMin(Landroid/widget/ProgressBar;)I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v0

    return v0
.end method

.method public static getRange(Landroid/widget/ProgressBar;)I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
