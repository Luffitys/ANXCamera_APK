.class public abstract Lcom/android/camera/resource/BaseResourceItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/camera/resource/BaseResourceDownloadable;


# instance fields
.field public baseArchivesFolder:Ljava/lang/String;

.field private transient currentLoadState:I

.field public id:Ljava/lang/String;

.field public transient index:I

.field public mZipPath:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/resource/BaseResourceItem;->currentLoadState:I

    return-void
.end method


# virtual methods
.method public abstract fillDetailData(Lorg/json/JSONObject;)V
.end method

.method public getCurrentState()I
    .locals 0

    iget p0, p0, Lcom/android/camera/resource/BaseResourceItem;->currentLoadState:I

    return p0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getIDPrefix()Ljava/lang/String;
.end method

.method public abstract onDecompressFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDecompressFinished(Ljava/lang/String;)V
.end method

.method public abstract parseSummaryData(Lorg/json/JSONObject;I)V
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/resource/BaseResourceItem;->currentLoadState:I

    return-void
.end method

.method public abstract simpleVerification(Ljava/lang/String;)Z
.end method
