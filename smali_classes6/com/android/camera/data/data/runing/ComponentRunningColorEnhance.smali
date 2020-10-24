.class public Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;
.super Lcom/android/camera/data/data/ComponentData;
.source ""


# instance fields
.field private mIsEnabled:Z

.field private mRecordValue:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    return-void
.end method

.method private getValue(IILcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/16 v1, 0xa3

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa5

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportedColorEnhance()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->supportColorEnhance()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f10069e

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_color_enhance"

    return-object p0
.end method

.method public getResIcon(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0801c2

    return p0

    :cond_0
    const p0, 0x7f0801c1

    return p0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->getValue(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    return-void
.end method

.method public reset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    return-void
.end method

.method public setEnabled(ZI)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    :cond_0
    return-void
.end method

.method public supportColorEnhance()Z
    .locals 0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo()Z

    move-result p0

    return p0
.end method
