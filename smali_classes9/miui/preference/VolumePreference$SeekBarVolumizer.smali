.class public Lmiui/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lmiui/preference/VolumePreference;


# direct methods
.method public constructor <init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->this$0:Lmiui/preference/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    new-instance p1, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Lmiui/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iput p4, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iput-object p3, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VolumePreference.CallbackHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p3, p5}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    return-void
.end method

.method static synthetic access$100(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 0

    iget p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    return p0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-nez p2, :cond_2

    iget p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    :cond_2
    :goto_0
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_3

    iget p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p0}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_3
    return-void
.end method

.method private onStartSample()V
    .locals 1

    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->this$0:Lmiui/preference/VolumePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/VolumePreference;->onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method

.method private onStopSample()V
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private postStopSample()V
    .locals 2

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    const/4 p1, -0x1

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid SeekBarVolumizer message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumePreference"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    return v1
.end method

.method public isSamplePlaying()Z
    .locals 0

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public muteVolume()V
    .locals 3

    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    iput v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    invoke-virtual {p0, v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    return-void
.end method

.method public onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V
    .locals 2

    iget v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p1, p1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V
    .locals 1

    iget v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    iput v0, p1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    iget p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput p0, p1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    return-void
.end method

.method postSetVolume(I)V
    .locals 1

    iput p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iget-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public revertVolume()V
    .locals 3

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public startSample()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    iget-object v0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public stopSample()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    return-void
.end method
