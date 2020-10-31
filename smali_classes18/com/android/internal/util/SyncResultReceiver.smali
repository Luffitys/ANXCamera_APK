.class public final Lcom/android/internal/util/SyncResultReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "SyncResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    }
.end annotation


# static fields
.field private static final EXTRA:Ljava/lang/String; = "EXTRA"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:I

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput p1, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    return-void
.end method

.method public static bundleFor(I)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static bundleFor(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static bundleFor([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private waitResult()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget v2, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_10

    nop

    return-void

    :cond_10
    new-instance v1, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not called in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/util/SyncResultReceiver;->mTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;-><init>(Ljava/lang/String;Lcom/android/internal/util/SyncResultReceiver$1;)V

    throw v1
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;

    const-string v3, "Interrupted"

    invoke-direct {v2, v3, v0}, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;-><init>(Ljava/lang/String;Lcom/android/internal/util/SyncResultReceiver$1;)V

    throw v2
.end method


# virtual methods
.method public getIntResult()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mResult:I

    return v0
.end method

.method public getOptionalExtraIntResult(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_17

    :cond_10
    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_17
    :goto_17
    return p1
.end method

.method public getParcelableListResult()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/ArrayList<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getParcelableResult()Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">()TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getStringArrayResult()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getStringResult()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/SyncResultReceiver;->waitResult()V

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public send(ILandroid/os/Bundle;)V
    .registers 4

    iput p1, p0, Lcom/android/internal/util/SyncResultReceiver;->mResult:I

    iput-object p2, p0, Lcom/android/internal/util/SyncResultReceiver;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/internal/util/SyncResultReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
