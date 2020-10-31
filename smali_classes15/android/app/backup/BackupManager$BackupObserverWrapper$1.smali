.class Landroid/app/backup/BackupManager$BackupObserverWrapper$1;
.super Landroid/os/Handler;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

.field final synthetic val$this$0:Landroid/app/backup/BackupManager;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupManager$BackupObserverWrapper;Landroid/os/Looper;Landroid/app/backup/BackupManager;)V
    .registers 4

    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iput-object p3, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->val$this$0:Landroid/app/backup/BackupManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_22
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupObserver;->backupFinished(I)V

    goto :goto_4e

    :cond_2c
    iget-object v0, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/BackupObserver;->onResult(Ljava/lang/String;I)V

    goto :goto_4e

    :cond_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v1, v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/app/backup/BackupProgress;

    invoke-virtual {v1, v2, v3}, Landroid/app/backup/BackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    nop

    :goto_4e
    return-void
.end method
