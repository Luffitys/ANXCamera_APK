.class public Lcom/android/camera/fragment/live/LiveDownloadView;
.super Lcom/android/camera/fragment/sticker/download/DownloadView;
.source "LiveDownloadView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/sticker/download/DownloadView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/sticker/download/DownloadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getAlphaNormal()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method protected getStateImageResource(I)I
    .locals 1

    const p0, 0x7f080191

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0

    :cond_1
    const p0, 0x7f080192

    return p0

    :cond_2
    const p0, 0x7f080193

    :cond_3
    return p0
.end method
