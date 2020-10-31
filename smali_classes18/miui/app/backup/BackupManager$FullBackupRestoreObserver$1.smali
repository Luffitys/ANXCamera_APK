.class Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;
.super Ljava/lang/Thread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

.field final synthetic val$feature:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iput-object p2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$feature:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_52

    :try_start_a
    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;
    invoke-static {v2}, Lmiui/app/backup/BackupManager;->access$200(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$feature:I

    iget-object v5, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v5, v5, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;
    invoke-static {v5}, Lmiui/app/backup/BackupManager;->access$300(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-interface {v2, v3, v4, v5}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupDataTransaction(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;)V

    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lmiui/app/backup/BackupManager;->access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lmiui/app/backup/BackupManager;->access$100(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_4f

    :try_start_3b
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->access$300(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_48} :catch_49

    goto :goto_4e

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_4e
    return-void

    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v1

    :try_start_53
    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    # getter for: Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lmiui/app/backup/BackupManager;->access$300(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_65
    throw v1
.end method
