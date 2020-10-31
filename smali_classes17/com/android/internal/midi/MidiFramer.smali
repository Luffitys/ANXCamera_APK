.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCount:I

.field private mInSysEx:Z

.field private mNeeded:I

.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field private mRunningStatus:B


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiReceiver;)V
    .registers 3

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    const-string v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method

.method public static formatMidiData([BII)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIDI+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, p2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int v5, p1, v1

    aget-byte v5, p0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "0x%02X, "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3f
    return-object v0
.end method


# virtual methods
.method public onSend([BIIJ)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v1, :cond_9

    move/from16 v1, p2

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    :goto_a
    const/4 v2, 0x0

    move v8, v1

    move v9, v2

    move/from16 v1, p2

    :goto_f
    move/from16 v10, p3

    if-ge v9, v10, :cond_c6

    aget-byte v11, p1, v1

    and-int/lit16 v12, v11, 0xff

    const/16 v2, 0x80

    const/4 v13, 0x0

    const/4 v3, 0x1

    if-lt v12, v2, :cond_88

    const/16 v2, 0xf0

    if-ge v12, v2, :cond_2e

    iput-byte v11, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    invoke-static {v11}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto/16 :goto_bf

    :cond_2e
    const/16 v4, 0xf8

    if-ge v12, v4, :cond_66

    if-ne v12, v2, :cond_3a

    iput-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    move v2, v1

    move v8, v2

    goto/16 :goto_bf

    :cond_3a
    const/16 v2, 0xf7

    if-ne v12, v2, :cond_56

    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_bf

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v4, v1, v8

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v3, p1

    move v4, v8

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iput-boolean v13, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    const/4 v2, -0x1

    move v8, v2

    goto/16 :goto_bf

    :cond_56
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v11, v2, v13

    iput-byte v13, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    invoke-static {v11}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_bf

    :cond_66
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_7a

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v5, v1, v8

    move-object/from16 v3, p1

    move v4, v8

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    add-int/lit8 v8, v1, 0x1

    move v2, v8

    goto :goto_7b

    :cond_7a
    move v2, v8

    :goto_7b
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v6, 0x1

    move-object/from16 v4, p1

    move v5, v1

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    move v8, v2

    goto :goto_bf

    :cond_88
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v2, :cond_bf

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v11, v2, v4

    iget v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v4, :cond_bf

    iget-byte v4, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v4, :cond_a3

    aput-byte v4, v2, v13

    :cond_a3
    iget-object v14, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    iget-object v15, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/16 v16, 0x0

    iget v2, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    move/from16 v17, v2

    move-wide/from16 v18, p4

    invoke-virtual/range {v14 .. v19}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v2, v2, v13

    invoke-static {v2}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    :cond_bf
    :goto_bf
    nop

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_f

    :cond_c6
    if-ltz v8, :cond_d6

    if-ge v8, v1, :cond_d6

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v5, v1, v8

    move-object/from16 v3, p1

    move v4, v8

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_d6
    return-void
.end method
