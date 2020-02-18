.class public Lcom/arcsoft/avatar/recoder/AudioEncoder;
.super Lcom/arcsoft/avatar/recoder/BaseEncoder;
.source "AudioEncoder.java"


# static fields
.field private static final t:Ljava/lang/String; = "Arc_BaseEncoder"

.field private static final u:Ljava/lang/String; = "Arc_Audio_Encoder"


# instance fields
.field private final A:I

.field private final B:Ljava/lang/String;

.field private final C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Ljava/lang/Object;

.field private L:J

.field private M:Z

.field public final NAME:Ljava/lang/String;

.field private v:Landroid/media/AudioRecord;

.field private w:Ljava/lang/Thread;

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar/recoder/RecordingListener;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/arcsoft/avatar/recoder/BaseEncoder;-><init>(Lcom/arcsoft/avatar/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar/recoder/RecordingListener;)V

    const-string p1, "ARC_S"

    iput-object p1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->NAME:Ljava/lang/String;

    const p1, 0xac44

    iput p1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->x:I

    const/16 p2, 0x10

    iput p2, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->y:I

    const/4 p3, 0x2

    iput p3, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->A:I

    const-string v1, "audio/mp4a-latm"

    iput-object v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->B:Ljava/lang/String;

    const v1, 0x1e8480

    iput v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->C:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_0

    const/16 p1, 0x5622

    :cond_0
    iput p1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->D:I

    iput p2, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->E:I

    iput p3, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->F:I

    iput v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->G:I

    iput v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->H:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->K:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/arcsoft/avatar/recoder/BaseEncoder;->c:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->L:J

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/avatar/recoder/AudioEncoder;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->v:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic b(Lcom/arcsoft/avatar/recoder/AudioEncoder;)I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->J:I

    return p0
.end method

.method private b()Z
    .locals 8

    iget v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->D:I

    iget v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->E:I

    iget v2, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->F:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->I:I

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->G:I

    iget v3, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->D:I

    iget v4, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->E:I

    iget v5, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->F:I

    iget v6, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->I:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->v:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/arcsoft/avatar/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar/recoder/RecordingListener;

    if-eqz v2, :cond_0

    const/16 v3, 0x271

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/arcsoft/avatar/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->v:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->I:I

    iput v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->J:I

    return v2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->v:Landroid/media/AudioRecord;

    return v0
.end method

.method private c()Z
    .locals 7

    iget v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->D:I

    iget v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->E:I

    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/arcsoft/avatar/recoder/AudioEncoder;->d()I

    move-result v1

    const-string v3, "channel-count"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->H:I

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/avatar/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iput-object v3, p0, Lcom/arcsoft/avatar/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/arcsoft/avatar/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar/recoder/RecordingListener;

    if-eqz v4, :cond_0

    const/16 v5, 0x221

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/arcsoft/avatar/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v2, p0, Lcom/arcsoft/avatar/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v0, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p0, p0, Lcom/arcsoft/avatar/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar/recoder/RecordingListener;

    if-eqz p0, :cond_2

    const/16 v0, 0x222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/arcsoft/avatar/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return v4
.end method

.method private d()I
    .locals 1

    iget p0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->F:I

    const/16 v0, 0xc

    if-ne v0, p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public notifyNewFrameAvailable()V
    .locals 0

    return-void
.end method

.method public prepare(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/avatar/recoder/AudioEncoder;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/arcsoft/avatar/recoder/AudioEncoder;->c()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->M:Z

    return-void
.end method

.method public release(Z)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->w:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->w:Ljava/lang/Thread;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->w:Ljava/lang/Thread;

    throw p1

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->v:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->M:Z

    invoke-super {p0, p1}, Lcom/arcsoft/avatar/recoder/BaseEncoder;->release(Z)V

    return-void
.end method

.method public startRecording()V
    .locals 2

    iget-boolean v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->M:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->w:Ljava/lang/Thread;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/arcsoft/avatar/recoder/BaseEncoder;->startRecording()V

    new-instance v0, Lcom/arcsoft/avatar/recoder/AudioEncoder$1;

    const-string v1, "Arc_Audio_Encoder"

    invoke-direct {v0, p0, v1}, Lcom/arcsoft/avatar/recoder/AudioEncoder$1;-><init>(Lcom/arcsoft/avatar/recoder/AudioEncoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->w:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/arcsoft/avatar/recoder/AudioEncoder;->w:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Audio encoder thread has been started already, can not start twice."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
