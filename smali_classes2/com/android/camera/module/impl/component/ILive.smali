.class public interface abstract Lcom/android/camera/module/impl/component/ILive;
.super Ljava/lang/Object;
.source "ILive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;,
        Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;,
        Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;,
        Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;,
        Lcom/android/camera/module/impl/component/ILive$ILivePlayer;,
        Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;
    }
.end annotation


# direct methods
.method public static getTotolDuration(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v2}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method
