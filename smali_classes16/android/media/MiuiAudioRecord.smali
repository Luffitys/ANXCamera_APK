.class public Landroid/media/MiuiAudioRecord;
.super Landroid/media/IMiuiAudioRecord$Stub;
.source "MiuiAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MiuiAudioRecord$AudioRecordClient;,
        Landroid/media/MiuiAudioRecord$AudioInfo;,
        Landroid/media/MiuiAudioRecord$MetaData;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

.field private mNativeAudioRecordInJavaObj:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MiuiAudioRecord"

    sput-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v0, "exmedia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;J)V
    .registers 6

    invoke-direct {p0}, Landroid/media/IMiuiAudioRecord$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiuiAudioRecord;->native_setup(Ljava/io/FileDescriptor;J)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v1, "init MiuiAudioRecord fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JLandroid/os/IBinder;)V
    .registers 7

    invoke-direct {p0}, Landroid/media/IMiuiAudioRecord$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiuiAudioRecord;->native_setup(Ljava/io/FileDescriptor;J)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v1, "init MiuiAudioRecord fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance v0, Landroid/media/MiuiAudioRecord$AudioRecordClient;

    invoke-direct {v0, p0, p4}, Landroid/media/MiuiAudioRecord$AudioRecordClient;-><init>(Landroid/media/MiuiAudioRecord;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final native native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z
.end method

.method private final native native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z
.end method

.method private final native native_setup(Ljava/io/FileDescriptor;J)Z
.end method

.method private final native native_start(J)Z
.end method

.method private final native native_stop()Z
.end method


# virtual methods
.method public fillBuffer(II)Landroid/os/Bundle;
    .registers 8

    new-instance v0, Landroid/media/MiuiAudioRecord$AudioInfo;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$AudioInfo;-><init>(Landroid/media/MiuiAudioRecord;)V

    invoke-direct {p0, v0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v2, "fillBuffer fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-wide v2, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->timeUs:J

    const-string/jumbo v4, "presentationTimeUs"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v2, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->size:J

    const-string/jumbo v4, "size"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v1
.end method

.method public getMetaData()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/media/MiuiAudioRecord$MetaData;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$MetaData;-><init>(Landroid/media/MiuiAudioRecord;)V

    invoke-direct {p0, v0}, Landroid/media/MiuiAudioRecord;->native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string v2, "getMetaData fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, v0, Landroid/media/MiuiAudioRecord$MetaData;->sampleRate:I

    const-string/jumbo v3, "sample-rate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, v0, Landroid/media/MiuiAudioRecord$MetaData;->channelCount:I

    const-string v3, "channel-count"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public start(J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_start(J)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .registers 2

    iget-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/MiuiAudioRecord$AudioRecordClient;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord;->mAudioRecordClient:Landroid/media/MiuiAudioRecord$AudioRecordClient;

    :cond_a
    invoke-direct {p0}, Landroid/media/MiuiAudioRecord;->native_stop()Z

    move-result v0

    return v0
.end method
