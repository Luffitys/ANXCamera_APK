.class public Lcom/android/camera/resource/SimpleNativeDecompressRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source ""


# instance fields
.field private mArchivePath:Ljava/lang/String;

.field private mTargetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mArchivePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mTargetPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceItem;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mArchivePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mTargetPath:Ljava/lang/String;

    const v2, 0x8000

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->verifySdcardZip(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mTargetPath:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/android/camera/resource/BaseResourceItem;->onDecompressFinished(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected bridge synthetic scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/camera/resource/BaseResourceItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceItem;)V

    return-void
.end method
