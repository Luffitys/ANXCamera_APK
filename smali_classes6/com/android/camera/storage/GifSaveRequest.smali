.class public Lcom/android/camera/storage/GifSaveRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/storage/SaveRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "GifSaveRequest"


# instance fields
.field private context:Landroid/content/Context;

.field private dateTaken:J

.field private height:I

.field private mGifPath:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field private orientation:I

.field private saverCallback:Lcom/android/camera/storage/SaverCallback;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/camera/storage/GifSaveRequest;->dateTaken:J

    iput-object p4, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    iput p5, p0, Lcom/android/camera/storage/GifSaveRequest;->width:I

    iput p6, p0, Lcom/android/camera/storage/GifSaveRequest;->height:I

    iput p7, p0, Lcom/android/camera/storage/GifSaveRequest;->orientation:I

    return-void
.end method

.method private checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/camera/storage/Storage;->isSecondPhoneStorage(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "GifSaveRequest"

    const-string p1, "save video: sd card was ejected"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 2

    const-string v0, "GifSaveRequest"

    const-string v1, "onFinish: runnable process finished"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/storage/GifSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 9

    const-string v0, "GifSaveRequest"

    const-string v1, "save gif: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/storage/GifSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/camera/storage/GifSaveRequest;->dateTaken:J

    iget v7, p0, Lcom/android/camera/storage/GifSaveRequest;->width:I

    iget v8, p0, Lcom/android/camera/storage/GifSaveRequest;->height:I

    invoke-static/range {v2 .. v8}, Lcom/android/camera/storage/Storage;->addGifToDataBase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save gif: media has been stored, Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", has thumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/storage/GifSaveRequest;->checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/storage/GifSaveRequest;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/Thumbnail;->setIsGif(Z)V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v3, v1, v2}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/GifSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/GifSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v1, v3, v4, v5}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/camera/storage/GifSaveRequest;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-static {v1, p0, v3, v4, v2}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/camera/storage/GifSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {p0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    const-string p0, "save gif: end"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/GifSaveRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/storage/GifSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method
