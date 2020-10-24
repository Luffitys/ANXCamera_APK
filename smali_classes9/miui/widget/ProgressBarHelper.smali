.class public Lmiui/widget/ProgressBarHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMin(Landroid/widget/ProgressBar;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result p0

    return p0
.end method

.method public static getRange(Landroid/widget/ProgressBar;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
