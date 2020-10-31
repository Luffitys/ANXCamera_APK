.class Landroid/media/midi/MidiOutputPort$1;
.super Ljava/lang/Thread;
.source "MidiOutputPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiOutputPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiOutputPort;)V
    .registers 2

    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    :try_start_4
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    # getter for: Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    move v7, v1

    if-gez v7, :cond_12

    goto :goto_62

    :cond_12
    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    move-result v1

    move v8, v1

    const/4 v1, 0x1

    if-eq v8, v1, :cond_3e

    const/4 v1, 0x2

    if-eq v8, v1, :cond_34

    const-string v1, "MidiOutputPort"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_34
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    # getter for: Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;
    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$100(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->flush()V

    goto :goto_55

    :cond_3e
    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    move-result v3

    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    move-result v4

    invoke-static {v0, v7}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    move-result-wide v5

    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    # getter for: Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;
    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$100(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/midi/MidiDispatcher;->send([BIIJ)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_54} :catch_61
    .catchall {:try_start_4 .. :try_end_54} :catchall_56

    nop

    :goto_55
    goto :goto_4

    :catchall_56
    move-exception v1

    iget-object v2, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    # getter for: Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catch_61
    move-exception v1

    :goto_62
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    # getter for: Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void
.end method
