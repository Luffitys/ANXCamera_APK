.class Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final mDstFile:Ljava/io/File;

.field private mModuleRef:Ljava/lang/ref/WeakReference;

.field final mSrcFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/android/camera/module/DollyZoomModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mSrcFile:Ljava/io/File;

    iput-object p2, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mDstFile:Ljava/io/File;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mModuleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "SaveVideoThread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "DollyZoomModule"

    const-string v2, "saveVideo start"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mSrcFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mDstFile:Ljava/io/File;

    invoke-static {v2, v3}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mSrcFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mDstFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    const-string v3, "saveVideo failed."

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveVideo done, success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cost="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule$SaveVideoThread;->mModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/DollyZoomModule;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->access$300(Lcom/android/camera/module/DollyZoomModule;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    throw p0
.end method
