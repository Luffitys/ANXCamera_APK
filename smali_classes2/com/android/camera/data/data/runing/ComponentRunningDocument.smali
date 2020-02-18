.class public Lcom/android/camera/data/data/runing/ComponentRunningDocument;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningDocument.java"


# static fields
.field public static final DOCUMENT_BLACK_WHITE:Ljava/lang/String; = "bin"

.field public static final DOCUMENT_ORIGIN:Ljava/lang/String; = "raw"

.field public static final DOCUMENT_STRENGTHEN:Ljava/lang/String; = "color"


# instance fields
.field private mCameraId:I

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mIsNormalIntent:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string p0, "raw"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_document_mode_value_key"

    return-object p0
.end method

.method public getResIcon(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f080062

    return p0

    :cond_0
    const p0, 0x7f080061

    return p0
.end method

.method public getResText()I
    .locals 0

    const p0, 0x7f0f03a4

    return p0
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Kc()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mCameraId:I

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mIsNormalIntent:Z

    if-nez p1, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string p1, "pref_document_mode_key"

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public reInit(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mCameraId:I

    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mIsNormalIntent:Z

    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1

    const-string v0, "pref_document_mode_key"

    if-eqz p2, :cond_1

    const/16 p2, 0xa5

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa3

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
