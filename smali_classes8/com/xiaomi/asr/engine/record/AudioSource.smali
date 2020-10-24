.class public abstract Lcom/xiaomi/asr/engine/record/AudioSource;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ERR_INIT_ONE_SHOT_RECORDER_FAILED:I = 0x4

.field public static final ERR_INIT_RECORDER_AUDIO_OCCUPIED:I = 0x2

.field public static final ERR_INIT_RECORDER_INVALID_BUFFER_SIZE:I = 0x1

.field public static final ERR_INIT_RECORDER_NO_AUDIO_PERMISSION:I = 0x3

.field public static final REC_SRC_FILE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract init()V
.end method

.method public abstract read([BII)I
.end method

.method public abstract release()V
.end method

.method public abstract startRecording()V
.end method
