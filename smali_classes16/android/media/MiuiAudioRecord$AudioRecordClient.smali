.class Landroid/media/MiuiAudioRecord$AudioRecordClient;
.super Ljava/lang/Object;
.source "MiuiAudioRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/MiuiAudioRecord;


# direct methods
.method constructor <init>(Landroid/media/MiuiAudioRecord;Landroid/os/IBinder;)V
    .registers 7

    const-string v0, " binder death"

    iput-object p1, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->this$0:Landroid/media/MiuiAudioRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_46

    :try_start_9
    # getter for: Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/MiuiAudioRecord;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecordClient link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_29

    goto :goto_46

    :catch_29
    move-exception p1

    # getter for: Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/MiuiAudioRecord;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecordClient could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_46
    :goto_46
    iput-object p2, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    # getter for: Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/MiuiAudioRecord;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detect AudioRecordClient binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->this$0:Landroid/media/MiuiAudioRecord;

    invoke-virtual {v0}, Landroid/media/MiuiAudioRecord;->stop()Z

    return-void
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    # getter for: Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/MiuiAudioRecord;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecordClient unlink to binder death"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    :cond_16
    return-void
.end method
