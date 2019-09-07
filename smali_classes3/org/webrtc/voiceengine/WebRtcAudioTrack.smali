.class Lorg/webrtc/voiceengine/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _context:Landroid/content/Context;

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _tempBufPlay:[B

.field final logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doRecInit:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isRecording:Z

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isPlaying:Z

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    const-string v0, "WebRTC AD java"

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->logTag:Ljava/lang/String;

    const/16 v0, 0x780

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->DoLog(Ljava/lang/String;)V

    :goto_0
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_tempBufPlay:[B

    return-void
.end method

.method private DoLog(Ljava/lang/String;)V
    .locals 0

    const-string p0, "WebRTC AD java"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private DoLogErr(Ljava/lang/String;)V
    .locals 0

    const-string p0, "WebRTC AD java"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private GetPlayoutVolume()I
    .locals 2

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method private InitPlayback(III)I
    .locals 10

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x1770

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    move v6, v0

    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    :cond_1
    const/4 v8, -0x1

    :try_start_0
    new-instance v9, Landroid/media/AudioTrack;

    const/4 v5, 0x2

    const/4 v7, 0x1

    move-object v1, v9

    move v2, p3

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v9, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    return v8

    :cond_2
    iget-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    :cond_3
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->DoLog(Ljava/lang/String;)V

    return v8
.end method

.method private PlayAudio(I)I
    .locals 4

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    :goto_0
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/16 v0, -0x13

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set play thread priority failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->DoLog(Ljava/lang/String;)V

    :goto_1
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_tempBufPlay:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_tempBufPlay:[B

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    shr-int/lit8 v3, v0, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    iget v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    if-ge v1, v3, :cond_2

    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    :cond_2
    iget v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    iget v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    sub-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v0, p1, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    return p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 5

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string p1, "Could not change audio routing - no audio manager"

    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->DoLogErr(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v0, :cond_7

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "Samsung"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x5

    if-eq v1, v0, :cond_5

    const/4 v1, 0x6

    if-eq v1, v0, :cond_5

    const/4 v1, 0x7

    if-ne v1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_2

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setMode(I)V

    :goto_2
    return v3
.end method

.method private SetPlayoutVolume(I)I
    .locals 2

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move v0, v1

    :cond_1
    return v0
.end method

.method private StartPlayback()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isPlaying:Z

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private StopPlayback()I
    .locals 3

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, -0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isPlaying:Z

    return v0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
