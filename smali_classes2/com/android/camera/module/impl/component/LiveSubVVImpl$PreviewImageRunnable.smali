.class final Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreviewImageRunnable"
.end annotation


# instance fields
.field private mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

.field public mPreviewImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(Landroid/media/Image;Lcom/xiaomi/mediaprocess/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;->mPreviewImage:Landroid/media/Image;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;->mPreviewImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->PushExtraYAndUVFrame(Landroid/media/Image;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push time\uff1a"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;->mPreviewImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;->mPreviewImage:Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    return-void
.end method
