.class Lcom/android/internal/os/BatteryStatsImpl$4;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$initialTime:J

.field final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;J)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$initialTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_56

    const/4 v3, 0x0

    :try_start_a
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string v4, "batterystats-checkin"

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$initialTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v5, v1

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_38
    .catchall {:try_start_a .. :try_end_33} :catchall_36

    :try_start_33
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_56

    goto :goto_49

    :catchall_36
    move-exception v4

    goto :goto_4f

    :catch_38
    move-exception v4

    :try_start_39
    const-string v5, "BatteryStats"

    const-string v6, "Error writing checkin battery statistics"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_36

    :try_start_47
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    :goto_49
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    nop

    monitor-exit v0

    return-void

    :goto_4f
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    nop

    throw v4

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_56

    throw v1
.end method
