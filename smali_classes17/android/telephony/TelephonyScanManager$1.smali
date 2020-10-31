.class Landroid/telephony/TelephonyScanManager$1;
.super Landroid/os/Handler;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method static synthetic lambda$handleMessage$1([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$2(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method static synthetic lambda$handleMessage$3(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 3

    const-string v0, "TelephonyScanManager"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const-string/jumbo v0, "message cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_13
    :try_start_13
    iget-object v2, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    iget-object v2, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    if-nez v2, :cond_2e

    goto :goto_45

    :cond_2e
    # getter for: Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->access$100(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v3

    # getter for: Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->access$200(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v4
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_53

    if-eqz v3, :cond_45

    if-nez v4, :cond_3b

    goto :goto_45

    :cond_3b
    :try_start_3b
    new-instance v5, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$kyu6stL-DypI21rZYTmr4_b05aY;

    invoke-direct {v5, v4}, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$kyu6stL-DypI21rZYTmr4_b05aY;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_43
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3b .. :try_end_43} :catch_44
    .catchall {:try_start_3b .. :try_end_43} :catchall_53

    goto :goto_45

    :catch_44
    move-exception v5

    :cond_45
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_48
    :try_start_48
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw v1

    :cond_56
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_5d
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_171

    if-eqz v1, :cond_158

    # getter for: Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->access$200(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v0

    # getter for: Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->access$100(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v2

    if-eqz v0, :cond_13f

    if-eqz v2, :cond_126

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_f8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_ce

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_f8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyScanManager"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_125

    :cond_a6
    :try_start_a6
    new-instance v3, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$pdLyQsygT0HSHx-1Ai5oXrS0I-I;

    invoke-direct {v3, v0}, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$pdLyQsygT0HSHx-1Ai5oXrS0I-I;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b5} :catch_c5

    :try_start_b5
    iget-object v4, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v4}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v3

    goto :goto_125

    :catchall_c2
    move-exception v4

    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_b5 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v4
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception v3

    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onComplete"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_125

    :cond_ce
    :try_start_ce
    iget v3, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$I1_6JyBQ9eWQYYHBgu_5Q0a_o9Q;

    invoke-direct {v4, v3, v0}, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$I1_6JyBQ9eWQYYHBgu_5Q0a_o9Q;-><init>(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v4}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_df} :catch_ef

    :try_start_df
    iget-object v5, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/telephony/TelephonyScanManager;->access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v4

    goto :goto_125

    :catchall_ec
    move-exception v5

    monitor-exit v4
    :try_end_ee
    .catchall {:try_start_df .. :try_end_ee} :catchall_ec

    :try_start_ee
    throw v5
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_ef} :catch_ef

    :catch_ef
    move-exception v3

    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onError"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_125

    :cond_f8
    :try_start_f8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "scanResult"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Landroid/telephony/CellInfo;

    const/4 v6, 0x0

    :goto_107
    array-length v7, v4

    if-ge v6, v7, :cond_113

    aget-object v7, v4, v6

    check-cast v7, Landroid/telephony/CellInfo;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_107

    :cond_113
    new-instance v6, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$yW1H_ue_J8-zHzNVMYRbK8os2d0;

    invoke-direct {v6, v5, v0}, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$yW1H_ue_J8-zHzNVMYRbK8os2d0;-><init>([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_11b} :catch_11c

    goto :goto_125

    :catch_11c
    move-exception v3

    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onResults"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_125
    return-void

    :cond_126
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find Executor with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find NetworkScanCallback with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_158
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find NetworkScanInfo with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_171
    move-exception v1

    :try_start_172
    monitor-exit v0
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v1
.end method
