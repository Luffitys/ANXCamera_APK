.class Landroid/media/SRTTrack;
.super Landroid/media/WebVttTrack;
.source "SRTRenderer.java"


# static fields
.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SRTTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    iput-object p1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .registers 18

    move-object/from16 v0, p0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v2, v2, v9

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long v13, v4, v11

    mul-long/2addr v13, v11

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    mul-long/2addr v11, v7

    mul-long/2addr v11, v15

    add-long/2addr v13, v11

    mul-long/2addr v15, v2

    add-long/2addr v13, v15

    add-long/2addr v13, v9

    return-wide v13
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .registers 14

    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v5

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "\\r?\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [[Landroid/media/TextTrackCueSpan;

    iput-object v3, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_34
    if-ge v6, v4, :cond_4e

    aget-object v7, v2, v6

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/media/TextTrackCueSpan;

    new-instance v9, Landroid/media/TextTrackCueSpan;

    const-wide/16 v10, -0x1

    invoke-direct {v9, v7, v10, v11}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v9, v8, v5

    iget-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v10, v3, 0x1

    aput-object v8, v9, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v10

    goto :goto_34

    :cond_4e
    invoke-virtual {p0, v0}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_51} :catch_53

    nop

    goto :goto_6b

    :catch_53
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SRTTrack"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b
    return-void
.end method

.method public onData([BZJ)V
    .registers 22

    const-string v1, "SRTTrack"

    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_c2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move-object/from16 v2, p0

    move-wide/from16 v9, p3

    goto/16 :goto_f0

    :cond_28
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    const-string v6, "-->"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-static {v8}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_45} :catch_d6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_45} :catch_c9

    move-wide/from16 v9, p3

    :try_start_47
    iput-wide v9, v5, Landroid/media/TextTrackCue;->mRunID:J

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    if-eqz v12, :cond_65

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_65

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_65
    const/4 v12, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [[Landroid/media/TextTrackCueSpan;

    iput-object v14, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    new-array v14, v7, [Ljava/lang/String;

    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    iput-object v14, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-array v7, v8, [Landroid/media/TextTrackCueSpan;

    new-instance v8, Landroid/media/TextTrackCueSpan;

    move-object/from16 v16, v2

    const-wide/16 v2, -0x1

    invoke-direct {v8, v15, v2, v3}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    const/4 v2, 0x0

    aput-object v8, v7, v2

    move-object v3, v7

    iget-object v7, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    aput-object v15, v7, v12

    iget-object v7, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v8, v12, 0x1

    aput-object v3, v7, v12
    :try_end_a1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_a1} :catch_be
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_a1} :catch_ba

    move-object/from16 v3, p1

    move v7, v2

    move v12, v8

    move-object/from16 v2, v16

    const/4 v8, 0x1

    goto :goto_7c

    :cond_a9
    move-object/from16 v16, v2

    move-object/from16 v2, p0

    :try_start_ad
    invoke-virtual {v2, v5}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ad .. :try_end_b0} :catch_b8
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b6

    move-object/from16 v3, p1

    move-object/from16 v2, v16

    goto/16 :goto_15

    :catch_b6
    move-exception v0

    goto :goto_ce

    :catch_b8
    move-exception v0

    goto :goto_db

    :catch_ba
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_ce

    :catch_be
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_db

    :cond_c2
    move-wide/from16 v9, p3

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    goto :goto_f0

    :catch_c9
    move-exception v0

    move-object/from16 v2, p0

    move-wide/from16 v9, p3

    :goto_ce
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f1

    :catch_d6
    move-exception v0

    move-object/from16 v2, p0

    move-wide/from16 v9, p3

    :goto_db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f0
    nop

    :goto_f1
    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/SRTTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    return-void

    :cond_a
    iget-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    move-object v2, v1

    check-cast v2, Landroid/media/TextTrackCue;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, v1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_44
    if-ge v8, v6, :cond_53

    aget-object v9, v5, v8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v6, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v8, 0x63

    invoke-virtual {v6, v8, v7, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13

    :cond_70
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void
.end method
