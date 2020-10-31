.class public Landroid/media/AudioServiceInjector;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"


# static fields
.field public static final ACTION_KEYCODE_POWER_UP:Ljava/lang/String; = "android.intent.action.KEYCODE_POWER_UP"

.field public static final ACTION_SMART_COVER:Ljava/lang/String; = "miui.intent.action.SMART_COVER"

.field public static final ACTION_VOLUME_BOOST:Ljava/lang/String; = "miui.intent.action.VOLUME_BOOST"

.field private static final ALL_RANDOM:Ljava/lang/String; = "AllFilesRandom"

.field private static final AUDIO_VISUAL_ENABLED:I = 0x1

.field public static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field public static final EXTRA_BOOST_STATE:Ljava/lang/String; = "volume_boost_state"

.field private static final FOUR_TIME_ZONES:Ljava/lang/String; = "DayZones"

.field private static final IS_LITHIUM:Ljava/lang/String; = "lithium"

.field private static final IS_SCORPIO:Ljava/lang/String; = "scorpio"

.field private static final KEY_MIUI_UNMUTE_BY_SETTINGS:Ljava/lang/String; = "miui_unmute_by_settings"

.field private static MAX_SHOW_NOTIFICATION_TIMES:I = 0x0

.field private static final MIUI_NATURE_SOUND_COLUMN_MAX:I = 0x4

.field private static final MIUI_NATURE_SOUND_NUMBER:[[I

.field private static final MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_ROW_MAX:I = 0x3

.field private static final MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

.field private static final MUTE_TIME_INTERVAL_INDEX:I = 0x3

.field private static NOTIFICATION_ID:I = 0x0

.field private static final ONE_TIME_ZONE:Ljava/lang/String; = "AllDay"

.field private static final RANDOM_PLAYBACK_BOUND:I = 0x1

.field private static final RANDOM_SOUND_DEFALTE_URI:Ljava/lang/String; = "file:///system/media/audio/ui/notice_audition.ogg"

.field private static final RANDOM_SOUND_NUM_INDEX:I = 0x0

.field private static RANDOM_SOUND_PREFIX:Ljava/lang/String; = null

.field private static SEQUENCE_SOUND_PREFIX:Ljava/lang/String; = null

.field private static final SEQ_SOUND_NUM_INDEX:I = 0x1

.field private static final SEQ_TIME_INTERVAL_INDEX:I = 0x2

.field private static final SOUND_SUFFIX:Ljava/lang/String; = ".ogg"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TIME_ZONES_RANDOM:Ljava/lang/String; = "TimeZonesRandom"

.field private static final TIME_ZONE_BOUND_CLOCK_EIGHT:I = 0x8

.field private static final TIME_ZONE_BOUND_CLOCK_FOURTEEN:I = 0xe

.field private static final TIME_ZONE_BOUND_CLOCK_NINETEEN:I = 0x13

.field private static final TIME_ZONE_BOUND_CLOCK_TWELVE:I = 0xc

.field private static final TIME_ZONE_BOUND_CLOCK_ZERO:I = 0x0

.field private static final TWO_TIME_ZONES:Ljava/lang/String; = "DayNight"

.field private static final availableDevice:I = 0x8c

.field private static final mContentResolverParameters:[Ljava/lang/String;

.field private static final mContentResolverTypes:[Ljava/lang/String;

.field private static mFirstUpdateMode:Z

.field private static mHasPlayedNormalNotification:Z

.field private static mInternationalLocation:Z

.field private static mLastIntentPowerKeyOrScreenOffTimeMs:J

.field private static mLastNotificationTimeMs:J

.field private static final mLockRandomStatusUpdate:Ljava/lang/Object;

.field private static final mMusicWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNatureSoundString:[Ljava/lang/String;

.field private static mNotificationRandomSound:Z

.field public static mOriginalIndexWhenSetStreamVolume:I

.field private static mPowerKeyReceived:Z

.field private static mPreviousNatureSoundIndex:I

.field private static mRandomSound:[Z

.field private static mRandomSoundAtLeastOne:Z

.field private static mScreenOffReceived:Z

.field private static mSeqIndex:I

.field private static mShowNotificationTimes:I

.field private static mStartAudioVisualPending:Z

.field private static mSunriseAndSunsetUpdate:Z

.field private static mSunriseTimeHours:I

.field private static mSunriseTimeMins:I

.field private static mSunsetTimeHours:I

.field private static mSunsetTimeMins:I

.field private static mTimeAndSoundNumParameters:[I

.field private static mTimeZone:Ljava/lang/String;

.field private static mTimeZoneforUpdate:Ljava/lang/String;

.field private static mTypes:Ljava/util/HashMap;

.field private static sAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sVoipAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final startAudioVisualRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 57

    const-string v0, "file:///system/media/audio/ui/notification_beep_sound_"

    sput-object v0, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    const-string v0, "file:///system/media/audio/ui/notification_beep_soundseq_"

    sput-object v0, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    const-string/jumbo v0, "notification_sound"

    const-string/jumbo v1, "sms_received_sound"

    const-string/jumbo v2, "sms_received_sound_slot_1"

    const-string/jumbo v3, "sms_received_sound_slot_2"

    const-string v4, "calendar_alert"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    const-string/jumbo v0, "random_note_mode_random_sound_number"

    const-string/jumbo v1, "random_note_mode_sequence_sound_number"

    const-string/jumbo v2, "random_note_mode_sequence_time_interval_ms"

    const-string/jumbo v3, "random_note_mode_mute_time_interval_ms"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    const/4 v0, 0x0

    sput v0, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sput v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    const/4 v3, 0x5

    new-array v4, v3, [Z

    fill-array-data v4, :array_1aa

    sput-object v4, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    const/4 v4, 0x4

    new-array v5, v4, [I

    fill-array-data v5, :array_1b2

    sput-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    new-instance v5, Landroid/media/AudioServiceInjector$1;

    invoke-direct {v5}, Landroid/media/AudioServiceInjector$1;-><init>()V

    sput-object v5, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    const-string v5, "file:///system/media/audio/ui/WaterDrop_preview.ogg"

    const-string v6, "file:///system/media/audio/ui/BirdCicada_preview.ogg"

    const-string v7, "file:///system/media/audio/ui/WindRain_preview.ogg"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sput-object v5, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/String;

    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    aget-object v6, v5, v0

    aput-object v6, v3, v0

    aget-object v6, v5, v0

    aput-object v6, v3, v1

    aget-object v6, v5, v0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v6, v3, v7

    aget-object v6, v5, v0

    const/4 v9, 0x3

    aput-object v6, v3, v9

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    sput-object v3, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    const-string v3, "file:///system/media/audio/ui/WaterDropNotification"

    const-string v5, "file:///system/media/audio/ui/BirdCicadaNotification"

    const-string v6, "file:///system/media/audio/ui/WindRainNotification"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    sput v0, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    const-string v3, "Day"

    const-string v5, "Midday"

    const-string v6, "Evening"

    const-string v10, "Night"

    filled-new-array {v3, v5, v6, v10}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const-string v5, "AllDay"

    const-string v6, "DayNight"

    const-string v10, "DayZones"

    filled-new-array {v5, v6, v5, v10}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    const-string v5, "TimeZonesRandom"

    const-string v6, "AllFilesRandom"

    filled-new-array {v5, v5, v6, v5}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    aget-object v5, v3, v0

    sput-object v5, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    new-array v5, v9, [[I

    new-array v6, v4, [I

    fill-array-data v6, :array_1be

    aput-object v6, v5, v0

    new-array v6, v4, [I

    fill-array-data v6, :array_1ca

    aput-object v6, v5, v1

    new-array v4, v4, [I

    fill-array-data v4, :array_1d6

    aput-object v4, v5, v7

    sput-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    sput v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    sput v0, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    sput v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    sput v0, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    aget-object v3, v3, v0

    sput-object v3, Landroid/media/AudioServiceInjector;->mTimeZoneforUpdate:Ljava/lang/String;

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    const-string v1, "com.changba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    const-string v1, "com.tencent.karaoke"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    const-string v1, "com.ss.android.lark"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const-string v8, "com.netease.cloudmusic"

    const-string v9, "com.tencent.qqmusic"

    const-string v10, "com.iloen.melon"

    const-string/jumbo v11, "mp3.player.freemusic"

    const-string v12, "com.kugou.android"

    const-string v13, "cn.kuwo.player"

    const-string v14, "com.google.android.apps.youtube.music"

    const-string v15, "com.tencent.blackkey"

    const-string v16, "cmccwm.mobilemusic"

    const-string v17, "com.migu.music.mini"

    const-string v18, "com.ting.mp3.android"

    const-string v19, "com.blueocean.musicplayer"

    const-string v20, "com.tencent.ibg.joox"

    const-string v21, "com.kugou.android.ringtone"

    const-string v22, "com.shoujiduoduo.dj"

    const-string v23, "com.spotify.music"

    const-string v24, "com.shoujiduoduo.ringtone"

    const-string v25, "com.hiby.music"

    const-string v26, "com.miui.player"

    const-string v27, "com.google.android.music"

    const-string v28, "com.tencent.ibg.joox"

    const-string v29, "com.skysoft.kkbox.android"

    const-string v30, "com.sofeh.android.musicstudio3"

    const-string v31, "com.gamestar.perfectpiano"

    const-string v32, "com.opalastudios.pads"

    const-string v33, "com.magix.android.mmjam"

    const-string v34, "com.musicplayer.playermusic"

    const-string v35, "com.gaana"

    const-string v36, "com.maxmpz.audioplayer"

    const-string v37, "com.melodis.midomiMusicIdentifier.freemium"

    const-string v38, "com.mixvibes.remixlive"

    const-string v39, "com.starmakerinteractive.starmaker"

    const-string v40, "com.smule.singandroid"

    const-string v41, "com.djit.apps.stream"

    const-string/jumbo v42, "tunein.service"

    const-string v43, "com.shazam.android"

    const-string v44, "com.jangomobile.android"

    const-string v45, "com.pandoralite"

    const-string v46, "com.tube.hqmusic"

    const-string v47, "com.amazon.avod.thirdpartyclient"

    const-string v48, "com.atmusic.app"

    const-string v49, "com.rubycell.pianisthd"

    const-string v50, "com.agminstruments.drumpadmachine"

    const-string v51, "com.playermusic.musicplayerapp"

    const-string v52, "com.famousbluemedia.piano"

    const-string v53, "com.apple.android.music"

    const-string/jumbo v54, "mb32r.musica.gratis.music.player.free.download"

    const-string v55, "com.famousbluemedia.yokee"

    const-string v56, "com.ss.android.ugc.trill"

    filled-new-array/range {v8 .. v56}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    new-instance v0, Landroid/media/AudioServiceInjector$2;

    invoke-direct {v0}, Landroid/media/AudioServiceInjector$2;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    sput v7, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    const v0, 0x6d4156

    sput v0, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    return-void

    nop

    :array_1aa
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1b2
    .array-data 4
        0xa
        0x1
        0x3e8
        0x2710
    .end array-data

    :array_1be
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_1ca
    .array-data 4
        0x8
        0x3
        0x5
        0x2
    .end array-data

    :array_1d6
    .array-data 4
        0xc
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDefaultStreamVolume([I)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    if-eqz v0, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    goto :goto_e

    :cond_a
    const/16 v1, 0xa

    aput v1, p0, v0

    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public static adjustHiFiVolume(ILandroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_d

    add-int/lit8 v1, v0, -0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto :goto_19

    :cond_d
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    const/16 v1, 0x64

    if-ge v0, v1, :cond_19

    add-int/lit8 v1, v0, 0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static adjustMaxStreamVolume([I)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_14

    if-eqz v0, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    goto :goto_11

    :cond_d
    const/16 v1, 0xf

    aput v1, p0, v0

    :cond_11
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method public static adjustMinStreamVolume([I)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    aput v1, p0, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method public static adjustVolumeSetting()V
    .registers 12

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_use_150_level"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_5c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const-string/jumbo v5, "volume_music_speaker"

    invoke-static {v1, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v6, v6, v3

    const-string/jumbo v7, "volume_music_headset"

    invoke-static {v1, v7, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    sget-object v8, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v8, v8, v3

    const-string/jumbo v9, "volume_music_usb_headset"

    invoke-static {v1, v9, v8, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    sget-object v10, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v3, v10, v3

    const-string/jumbo v10, "volume_music_bt_a2dp"

    invoke-static {v1, v10, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    mul-int/lit8 v11, v2, 0xa

    invoke-static {v1, v5, v11, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    mul-int/lit8 v5, v6, 0xa

    invoke-static {v1, v7, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    mul-int/lit8 v5, v8, 0xa

    invoke-static {v1, v9, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    mul-int/lit8 v5, v3, 0xa

    invoke-static {v1, v10, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5c
    return-void
.end method

.method public static broadcastRecorderState(II)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastRecorderState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportKaraokeMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    :cond_25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.media.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_45
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.miui.permission.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_57

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_57
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static broadcastRecorderState(III)V
    .registers 9

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastRecorderState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportKaraokeMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportVoipMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x7

    if-eq p2, v1, :cond_2a

    :cond_29
    return-void

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastRecorderState : state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " source:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessionId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "pkg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportVoipMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    const-string/jumbo v4, "miui.media.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_80
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.miui.permission.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_91

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b8

    :catchall_91
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_96
    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportKaraokeMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b8

    const-string/jumbo v4, "miui.media.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_a2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.miui.permission.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_a2 .. :try_end_af} :catchall_b3

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b8

    :catchall_b3
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_b8
    :goto_b8
    return-void
.end method

.method public static calculateStreamMaxVolume(IILandroid/content/Context;)I
    .registers 5

    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_10
    const/4 v1, 0x3

    if-ne v1, p0, :cond_1b

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    add-int/lit8 v0, v0, 0xa

    :cond_1b
    return v0
.end method

.method public static calculateStreamVolume(IILandroid/content/Context;)I
    .registers 5

    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_10
    const/4 v1, 0x3

    if-ne p0, v1, :cond_20

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    :cond_20
    return v0
.end method

.method public static canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    if-nez p0, :cond_6

    goto :goto_12

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    :cond_12
    :goto_12
    return v0
.end method

.method public static checkForRingerModeChange(Landroid/content/Context;III)I
    .registers 5

    invoke-static {p0, p2}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static checkMusicStream([Ljava/lang/Object;Landroid/content/Context;II)V
    .registers 4

    return-void
.end method

.method public static checkSunriseAndSunsetTimeUpdate(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    sget-boolean v0, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v0, :cond_27

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mTimeZoneforUpdate:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-boolean v0, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    if-ne v0, v1, :cond_27

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateSunriseAndSunsetTime(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    goto :goto_27

    :cond_25
    sput-boolean v1, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    :cond_27
    :goto_27
    return-void
.end method

.method private static createActualUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioServiceInjector;->querySerialsIndex(I)I

    move-result v4

    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->querySoundSourcesNumber(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x1

    if-le v0, v7, :cond_4f

    :cond_25
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    sget v8, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    if-eq v8, v2, :cond_25

    sput v2, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    aget-object v7, v7, v4

    const-string v8, "TimeZonesRandom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_4f
    if-ne v0, v7, :cond_5a

    const/4 v2, 0x1

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5a
    :goto_5a
    const-string v7, ".ogg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createActualUriForNatureSound: FilePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AudioService"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static createSeqUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioServiceInjector;->querySerialsIndex(I)I

    move-result v2

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Seq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "AllDay"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v3, 0x1

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_ac

    :cond_37
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "DayNight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_6c

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 v3, 0x2

    goto :goto_61

    :cond_60
    :goto_60
    const/4 v3, 0x1

    :goto_61
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_ac

    :cond_6c
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v9, "DayZones"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    const/4 v3, 0x1

    goto :goto_a2

    :cond_88
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    const/4 v3, 0x2

    goto :goto_a2

    :cond_94
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    const/4 v3, 0x3

    goto :goto_a2

    :cond_a1
    const/4 v3, 0x4

    :goto_a2
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_ac
    :goto_ac
    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createActualUriForNatureSound: FilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getActiveStreamType(ZIIIZ)I
    .registers 11

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/media/AudioServiceInjector;->getActiveStreamType(ZIIIZZ)I

    move-result v0

    return v0
.end method

.method public static getActiveStreamType(ZIIIZZ)I
    .registers 23

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v2

    const-string v3, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    const-string v4, "getActiveStreamType: Forcing STREAM_ASSISTANT"

    const/high16 v5, -0x80000000

    const/4 v6, 0x6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x3

    const-string v12, "AudioService"

    const/4 v13, 0x1

    move/from16 v14, p1

    if-eq v14, v13, :cond_1c

    goto :goto_83

    :cond_1c
    if-eqz p0, :cond_26

    invoke-static {v8}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v11, :cond_25

    return v6

    :cond_25
    return v8

    :cond_26
    if-eqz p5, :cond_38

    if-eq v2, v7, :cond_37

    invoke-static {v2, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-static {v11, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_37

    return v11

    :cond_37
    return v2

    :cond_38
    if-eq v2, v7, :cond_46

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v13

    if-eqz v13, :cond_46

    if-eqz p4, :cond_45

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return v2

    :cond_46
    const-string v13, "getActiveStreamType: Forcing STREAM_RING stream active"

    const-string v15, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    if-ne v0, v5, :cond_6a

    invoke-static {v9, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v4

    if-eqz v4, :cond_58

    if-eqz p4, :cond_57

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return v9

    :cond_58
    invoke-static {v10, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v4

    if-eqz v4, :cond_64

    if-eqz p4, :cond_63

    invoke-static {v12, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return v10

    :cond_64
    if-eqz p4, :cond_69

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return v11

    :cond_6a
    nop

    invoke-static {v10, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v16

    if-eqz v16, :cond_77

    if-eqz p4, :cond_76

    invoke-static {v12, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return v10

    :cond_77
    invoke-static {v9, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v15

    if-eqz v15, :cond_83

    if-eqz p4, :cond_82

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    return v9

    :cond_83
    :goto_83
    if-eqz p0, :cond_9b

    invoke-static {v8}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v11, :cond_93

    if-eqz p4, :cond_92

    const-string v3, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return v6

    :cond_93
    if-eqz p4, :cond_9a

    const-string v3, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return v8

    :cond_9b
    if-eqz p5, :cond_ad

    if-eq v2, v7, :cond_ac

    invoke-static {v2, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_ac

    invoke-static {v11, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_ac

    return v11

    :cond_ac
    return v2

    :cond_ad
    invoke-static {v10, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    const-string v8, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    if-eqz v6, :cond_bb

    if-eqz p4, :cond_ba

    invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    return v10

    :cond_bb
    invoke-static {v9, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    const-string v13, "getActiveStreamType: Forcing STREAM_RING"

    if-eqz v6, :cond_c9

    if-eqz p4, :cond_c8

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    return v9

    :cond_c9
    if-eq v2, v7, :cond_d7

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_d7

    if-eqz p4, :cond_d6

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    return v2

    :cond_d7
    if-ne v0, v5, :cond_f7

    invoke-static {v10, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_e5

    if-eqz p4, :cond_e4

    invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    return v10

    :cond_e5
    invoke-static {v9, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_f1

    if-eqz p4, :cond_f0

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    return v9

    :cond_f1
    if-eqz p4, :cond_f6

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    return v11

    :cond_f7
    if-eqz p4, :cond_10d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d
    return v0
.end method

.method public static getDefaultVolStreamNoPlayback(I)I
    .registers 2

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    :cond_7
    const/4 v0, 0x3

    return v0
.end method

.method private static getIndexForType(Ljava/lang/String;)I
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexForType() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getMiuiNatureSoundStatus(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    :goto_14
    return v0
.end method

.method public static getNotificationUri()Ljava/lang/String;
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    sget-boolean v3, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_45

    const/4 v3, 0x1

    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v10, v6

    if-eqz v6, :cond_39

    sub-long v6, v0, v10

    sget-object v12, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v12, v5

    int-to-long v13, v5

    cmp-long v5, v6, v13

    if-lez v5, :cond_22

    goto :goto_39

    :cond_22
    sub-long v5, v0, v10

    aget v4, v12, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_33

    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_3c

    sput-boolean v9, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    const/4 v3, 0x0

    goto :goto_3c

    :cond_33
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_3c

    const/4 v3, 0x0

    goto :goto_3c

    :cond_39
    :goto_39
    const/4 v3, 0x0

    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    :cond_3c
    :goto_3c
    if-nez v3, :cond_43

    const-string/jumbo v2, "normal_notification"

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_43
    goto/16 :goto_bb

    :cond_45
    const/4 v3, 0x0

    const/4 v10, 0x0

    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_73

    sub-long v6, v0, v11

    sget-object v13, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v13, v5

    int-to-long v14, v5

    cmp-long v5, v6, v14

    if-lez v5, :cond_59

    goto :goto_73

    :cond_59
    sub-long v5, v0, v11

    aget v4, v13, v4

    int-to-long v11, v4

    cmp-long v4, v5, v11

    if-gtz v4, :cond_6d

    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v13, v9

    if-ge v4, v5, :cond_76

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v10, 0x1

    goto :goto_76

    :cond_6d
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_76

    const/4 v3, 0x1

    goto :goto_76

    :cond_73
    :goto_73
    const/4 v3, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_76
    :goto_76
    const-string v4, ".ogg"

    if-eqz v3, :cond_9f

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_ba

    :cond_9f
    if-eqz v10, :cond_ba

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_bb

    :cond_ba
    :goto_ba
    nop

    :goto_bb
    return-object v2
.end method

.method public static getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioServiceInjector;->playRandomSound(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_4d

    const/4 v3, 0x1

    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v7, v10, v7

    if-eqz v7, :cond_42

    sub-long v7, v0, v10

    sget-object v12, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v12, v5

    int-to-long v13, v5

    cmp-long v5, v7, v13

    if-lez v5, :cond_28

    goto :goto_42

    :cond_28
    sub-long v5, v0, v10

    aget v4, v12, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_3c

    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v12, v9

    if-ge v4, v5, :cond_45

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v3, 0x0

    goto :goto_45

    :cond_3c
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_45

    const/4 v3, 0x0

    goto :goto_45

    :cond_42
    :goto_42
    const/4 v3, 0x0

    sput v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_45
    :goto_45
    if-nez v3, :cond_4c

    const-string/jumbo v2, "normal_notification"

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_4c
    goto :goto_8f

    :cond_4d
    const/4 v3, 0x0

    const/4 v10, 0x0

    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v7, v11, v7

    if-eqz v7, :cond_7b

    sub-long v7, v0, v11

    sget-object v13, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v13, v5

    int-to-long v14, v5

    cmp-long v5, v7, v14

    if-lez v5, :cond_61

    goto :goto_7b

    :cond_61
    sub-long v5, v0, v11

    aget v4, v13, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_75

    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v13, v9

    if-ge v4, v5, :cond_7e

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v10, 0x1

    goto :goto_7e

    :cond_75
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_7e

    const/4 v3, 0x1

    goto :goto_7e

    :cond_7b
    :goto_7b
    const/4 v3, 0x1

    sput v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_7e
    :goto_7e
    if-eqz v3, :cond_87

    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->createActualUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_8f

    :cond_87
    if-eqz v10, :cond_8f

    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->createSeqUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_8f
    :goto_8f
    return-object v2
.end method

.method public static getRingerModeAffectedStreams(ILandroid/content/Context;)I
    .registers 9

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return p0

    :cond_5
    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v0

    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_41

    or-int/lit8 p0, p0, 0x26

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mute_music_at_silent"

    const/4 v5, -0x3

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/lit8 p0, p0, -0x9

    if-ne v1, v4, :cond_27

    const/16 v2, 0x8

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    or-int/2addr p0, v2

    if-lez v0, :cond_41

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "mute_voiceassit_at_silent"

    invoke-static {v2, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    shl-int v5, v4, v0

    not-int v5, v5

    and-int/2addr p0, v5

    if-ne v2, v4, :cond_3f

    shl-int v5, v4, v0

    goto :goto_40

    :cond_3f
    move v5, v3

    :goto_40
    or-int/2addr p0, v5

    :cond_41
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_57

    const/16 p0, 0x100

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_50

    goto :goto_51

    :cond_50
    const/4 v3, 0x2

    :goto_51
    or-int/2addr p0, v3

    if-lez v0, :cond_57

    shl-int v1, v4, v0

    or-int/2addr p0, v1

    :cond_57
    return p0
.end method

.method public static getVoiceAssistNum()I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "STREAM_ASSISTANT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public static handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler;->handleAudioStatusChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static handleModeChanged(Landroid/content/Context;II)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "usage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Landroid/media/AudioServiceInjector;->handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static handleSetForceUse(Landroid/content/Context;IILjava/lang/String;)V
    .registers 5

    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->handleSetForceUse(IILjava/lang/String;)V

    return-void
.end method

.method public static handleSpeakerChanged(Landroid/content/Context;IZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None thiing for handleSpeakerChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static handleZenModeChangedForMusic(Ljava/lang/Object;Landroid/content/Context;IIII[I)V
    .registers 9

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_39

    if-eq p3, p2, :cond_39

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_39

    :cond_d
    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    goto :goto_19

    :cond_14
    if-ne p2, v0, :cond_19

    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on change zenmode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    :goto_39
    return-void
.end method

.method public static handleZenModeVolumeChanged(Landroid/content/Context;III)V
    .registers 11

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4c

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4c

    :cond_15
    const-string/jumbo v0, "volume_music_before_mute"

    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    return-void

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    add-int/lit8 v5, p3, 0x5

    div-int/lit8 v5, v5, 0xa

    const/4 v6, -0x2

    invoke-static {v4, v0, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4c
    :goto_4c
    return-void
.end method

.method public static isActiveForReal(ZI)Z
    .registers 4

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    goto :goto_14

    :cond_f
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0

    :cond_14
    :goto_14
    invoke-static {p1, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0
.end method

.method public static isAppCalledInCall(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_46

    nop

    const-string/jumbo v1, "telecom"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "called from app when in call: pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return v0
.end method

.method private static isLithium()Z
    .registers 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOnlyAdjustVolume(I)Z
    .registers 2

    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isOnlyAdjustVolume(III)Z
    .registers 4

    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-nez v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z
    .registers 3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isScorpio()Z
    .registers 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "scorpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isXOptMode()Z
    .registers 2

    nop

    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static needEnableVoiceVolumeBoost(IZIIZ)Z
    .registers 9

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_61

    if-nez p3, :cond_61

    const/4 v0, 0x1

    if-ne p2, v0, :cond_61

    const-string/jumbo v2, "ro.vendor.audio.voice.volume.boost"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "manual"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_61

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMaxVol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " streamTypeAlias:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " boostEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v0, :cond_5a

    if-eqz p1, :cond_5a

    if-nez p4, :cond_5a

    return v0

    :cond_5a
    const/4 v2, -0x1

    if-ne p0, v2, :cond_60

    if-eqz p4, :cond_60

    return v0

    :cond_60
    return v1

    :cond_61
    :goto_61
    return v1
.end method

.method private static onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_1b} :catch_17c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_171
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1b} :catch_166
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_1b} :catch_15b

    const-string/jumbo v6, "setStreamVolumeInt"

    const/16 v7, 0x17

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lt v5, v7, :cond_46

    if-eqz v3, :cond_5f

    :try_start_2a
    new-array v5, v8, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v11

    const-class v14, Ljava/lang/String;

    aput-object v14, v5, v10

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    goto :goto_5f

    :cond_46
    if-eqz v3, :cond_5f

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v11

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    :cond_5f
    :goto_5f
    if-ne v11, v2, :cond_e0

    if-eqz v0, :cond_e0

    invoke-static/range {p6 .. p6}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v5
    :try_end_67
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2a .. :try_end_67} :catch_17c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_67} :catch_171
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_67} :catch_166
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_67} :catch_15b

    if-eqz v5, :cond_d9

    move/from16 v5, p2

    move/from16 v6, p4

    if-lt v5, v6, :cond_dd

    move/from16 v14, p4

    if-eqz v4, :cond_bd

    :try_start_73
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v7, :cond_9e

    new-array v7, v8, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "AudioService"

    aput-object v8, v7, v10

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    :cond_9e
    new-array v7, v10, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    :goto_bd
    add-int/lit8 v7, v14, 0x5

    div-int/lit8 v7, v7, 0xa

    sget v8, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I
    :try_end_c3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_73 .. :try_end_c3} :catch_d6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_73 .. :try_end_c3} :catch_d3
    .catch Ljava/lang/IllegalAccessException; {:try_start_73 .. :try_end_c3} :catch_d0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_73 .. :try_end_c3} :catch_cd

    sub-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0xa

    move-object/from16 v15, p6

    :try_start_c8
    invoke-static {v15, v8}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto/16 :goto_186

    :catch_cd
    move-exception v0

    goto/16 :goto_160

    :catch_d0
    move-exception v0

    goto/16 :goto_16b

    :catch_d3
    move-exception v0

    goto/16 :goto_176

    :catch_d6
    move-exception v0

    goto/16 :goto_181

    :cond_d9
    move/from16 v5, p2

    move/from16 v6, p4

    :cond_dd
    move-object/from16 v15, p6

    goto :goto_e6

    :cond_e0
    move/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v15, p6

    :goto_e6
    if-eqz v4, :cond_186

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v7, :cond_133

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pid:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " Uid:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aget v14, p5, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v7, v8, v10

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_186

    :cond_133
    new-array v7, v10, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_152
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c8 .. :try_end_152} :catch_159
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c8 .. :try_end_152} :catch_157
    .catch Ljava/lang/IllegalAccessException; {:try_start_c8 .. :try_end_152} :catch_155
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c8 .. :try_end_152} :catch_153

    goto :goto_186

    :catch_153
    move-exception v0

    goto :goto_162

    :catch_155
    move-exception v0

    goto :goto_16d

    :catch_157
    move-exception v0

    goto :goto_178

    :catch_159
    move-exception v0

    goto :goto_183

    :catch_15b
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_160
    move-object/from16 v15, p6

    :goto_162
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_187

    :catch_166
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_16b
    move-object/from16 v15, p6

    :goto_16d
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_186

    :catch_171
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_176
    move-object/from16 v15, p6

    :goto_178
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_186

    :catch_17c
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_181
    move-object/from16 v15, p6

    :goto_183
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :cond_186
    :goto_186
    nop

    :goto_187
    return-void
.end method

.method private static playRandomSound(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    sget-object v0, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v1, v1, p0

    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static queryCurrentTimeZone()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sget-boolean v4, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v4, :cond_1b

    invoke-static {v0, v1}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZoneForDomestic(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_1b
    const/16 v4, 0x8

    if-ltz v0, :cond_27

    if-ge v0, v4, :cond_27

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    goto :goto_4d

    :cond_27
    const/4 v5, 0x0

    if-lt v0, v4, :cond_31

    if-ge v0, v3, :cond_31

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_4d

    :cond_31
    const/16 v4, 0xe

    if-lt v0, v3, :cond_3d

    if-ge v0, v4, :cond_3d

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    goto :goto_4d

    :cond_3d
    if-lt v0, v4, :cond_48

    const/16 v3, 0x13

    if-ge v0, v3, :cond_48

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_4d

    :cond_48
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    :goto_4d
    return-object v3
.end method

.method private static queryCurrentTimeZoneForDomestic(II)Ljava/lang/String;
    .registers 5

    if-ltz p0, :cond_12

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    if-lt p0, v0, :cond_c

    if-ne p0, v0, :cond_12

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    if-ge p1, v0, :cond_12

    :cond_c
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_48

    :cond_12
    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-gt p0, v0, :cond_1f

    if-ne p0, v0, :cond_26

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    if-lt p1, v0, :cond_26

    :cond_1f
    if-ge p0, v2, :cond_26

    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_48

    :cond_26
    const/16 v0, 0xe

    if-lt p0, v2, :cond_32

    if-ge p0, v0, :cond_32

    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_48

    :cond_32
    if-lt p0, v0, :cond_43

    sget v0, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    if-lt p0, v0, :cond_3e

    if-ne p0, v0, :cond_43

    sget v0, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    if-ge p1, v0, :cond_43

    :cond_3e
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_48

    :cond_43
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_48
    return-object v0
.end method

.method private static querySerialsIndex(I)I
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_5
    :try_start_5
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1d

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v0, v2

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1d
    :goto_1d
    monitor-exit v1

    return v0

    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private static querySoundSourcesNumber(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x0

    :goto_d
    :try_start_d
    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_25

    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    aget-object v7, v7, v6

    sget-object v8, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    move v0, v6

    goto :goto_25

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_25
    :goto_25
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_95

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    const/4 v5, 0x0

    :goto_2d
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_41

    aget-object v6, v6, v5

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    move v1, v5

    goto :goto_41

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_41
    :goto_41
    const/4 v5, 0x3

    if-ge v0, v5, :cond_62

    const/4 v5, 0x4

    if-ge v1, v5, :cond_62

    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "TimeZonesRandom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    aget-object v5, v5, v0

    aget v3, v5, v1

    goto :goto_63

    :cond_5a
    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget v3, v5, v6

    goto :goto_63

    :cond_62
    move v3, v4

    :goto_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "querySoundSourcesNumber:result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " RowIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ColumnIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mTimeZone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_95
    move-exception v6

    :try_start_96
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v6
.end method

.method private static restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 15

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-eqz v1, :cond_57

    const-string/jumbo v3, "volume_music"

    const-string/jumbo v4, "volume_music_before_mute"

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int v6, v5, v1

    if-nez v6, :cond_15

    goto :goto_54

    :cond_15
    not-int v6, v5

    and-int/2addr v1, v6

    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_47
    const/16 v7, 0xa

    const/4 v8, -0x2

    invoke-static {v0, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_54

    invoke-static {v0, v3, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_57
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateMusicStreamVolume(Ljava/lang/Object;)V

    return-void
.end method

.method private static saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-eqz v1, :cond_65

    const-string/jumbo v3, "volume_music"

    const-string/jumbo v4, "volume_music_before_mute"

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int v6, v5, v1

    if-nez v6, :cond_15

    goto :goto_62

    :cond_15
    not-int v6, v5

    and-int/2addr v1, v6

    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_47

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_47
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v0, v3, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move v9, v5

    move/from16 v10, p3

    move-object/from16 v11, p4

    move v15, v12

    move-object/from16 v12, p1

    invoke-static/range {v6 .. v12}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    if-eq v15, v14, :cond_62

    const/4 v6, -0x2

    invoke-static {v0, v4, v15, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_65
    return-void
.end method

.method public static sendVolumeBoostBroadcast(ZLandroid/content/Context;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.VOLUME_BOOST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "volume_boost_state"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static setDefaultTimeZoneStatus(Z)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultTimeZoneStatus: mInternationalLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    return-void
.end method

.method public static setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 8

    aget v0, p5, p1

    invoke-static {p6, v0, p3, p2}, Landroid/media/AudioServiceInjector;->handleZenModeVolumeChanged(Landroid/content/Context;III)V

    invoke-static/range {p0 .. p6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    return-void
.end method

.method public static setSunriseAndSunsetTime(IIII)V
    .registers 4

    sput p0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    sput p2, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    sput p1, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    sput p3, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    return-void
.end method

.method public static setVolumeBoost(ZLandroid/content/Context;)Z
    .registers 6

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_volume_boost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_18

    const-string v2, "false"

    goto :goto_1b

    :cond_18
    const-string/jumbo v2, "true"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    xor-int/lit8 v2, p0, 0x1

    invoke-static {v2, p1}, Landroid/media/AudioServiceInjector;->sendVolumeBoostBroadcast(ZLandroid/content/Context;)V

    xor-int/lit8 v2, p0, 0x1

    return v2
.end method

.method public static shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z
    .registers 11

    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x3

    if-ne p0, v0, :cond_33

    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_33

    :cond_18
    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    move v2, p3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_25

    if-lez v0, :cond_25

    move v3, v4

    goto :goto_26

    :cond_25
    move v3, v1

    :goto_26
    if-ne p1, v4, :cond_2c

    if-ne p2, v2, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v1

    :goto_2d
    if-nez v3, :cond_31

    if-eqz v5, :cond_32

    :cond_31
    move v1, v4

    :cond_32
    return v1

    :cond_33
    :goto_33
    return v1
.end method

.method public static shouldRun(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 10

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importance is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AudioService"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ne v2, v5, :cond_53

    goto :goto_54

    :cond_53
    move v4, v7

    :goto_54
    return v4

    :cond_55
    goto :goto_10

    :cond_56
    return v4
.end method

.method public static showNotification(IILandroid/content/Context;)V
    .registers 19

    move-object/from16 v6, p2

    sget v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sget v1, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    if-ge v0, v1, :cond_13b

    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v7, :cond_13b

    const-string/jumbo v0, "ro.vendor.audio.sfx.audiovisual"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    move/from16 v10, p0

    goto/16 :goto_13d

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move/from16 v10, p0

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    :cond_2e
    const-string/jumbo v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/NotificationManager;

    invoke-virtual {v12}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_3e
    if-ge v3, v2, :cond_4e

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    sget v13, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    if-ne v5, v13, :cond_4b

    return-void

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "MiAudioVisualNotificationTimes"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sget v3, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    const-string v4, "AudioService"

    const/4 v13, 0x1

    if-ge v0, v3, :cond_116

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    add-int/2addr v1, v13

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show MiAudioVisual Notification for pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v14, v0

    const-string v0, "com.miui.misound"

    const-string v1, "com.miui.misound.HeadsetSettingsActivity"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p2

    move-object v2, v14

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "MISOUND_NOTIFICATION_ID"

    const-string v4, "MISOUND_NOTIFICATION_NAME"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v12, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x110e00e8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e00e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v6, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x110700c8

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v7, 0x106001c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v7, "sys"

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "miui.targetPkg"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const/4 v7, 0x0

    sget v8, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v8, v13, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiAudioVisual notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v13, [Ljava/lang/Object;

    sget v3, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "already show %d times"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13b
    move/from16 v10, p0

    :goto_13d
    return-void
.end method

.method public static startAudioVisualIfsatisfiedWith(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter startAudioVisual with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.vendor.audio.sfx.audiovisual"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "startAudioVisual exit, device not support"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_visual_screen_lock_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d

    return-void

    :cond_3d
    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    sget-boolean v5, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    if-nez v5, :cond_56

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_56

    const-string/jumbo v2, "startAudioVisual exit with keyguardLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    sput-boolean v4, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    const-string v5, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    sput-boolean v4, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    sget-object v4, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_7c

    sget-object v1, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-boolean v2, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    return-void

    :cond_72
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    sput-boolean v4, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    :cond_7c
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    if-eqz v4, :cond_ec

    sget-boolean v4, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    if-eqz v4, :cond_ec

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-gez v4, :cond_ec

    const-string v4, "enter start AudioVisual"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e5

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v8

    if-eqz v8, :cond_e5

    const-string v8, "com.xiaomi.miaudiovisual"

    invoke-static {v8, v0}, Landroid/media/AudioServiceInjector;->shouldRun(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playback packagename is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {p2, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e6

    :cond_e5
    goto :goto_9e

    :cond_e6
    :goto_e6
    sput-boolean v2, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    sput-boolean v2, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    sput-boolean v2, Landroid/media/AudioServiceInjector;->mStartAudioVisualPending:Z

    :cond_ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    return-void
.end method

.method public static supportKaraokeMode(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static supportVoipMode(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/media/AudioServiceInjector;->sVoipAppList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static tryBlockMusicUnmute(Landroid/content/Context;IZZ)Z
    .registers 13

    const-string v0, "AudioService"

    const-string v1, "[tryBlockMusicUnmute]Enter....."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mute_music_at_silent"

    const/4 v3, 0x0

    const/4 v4, -0x3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_17

    return v3

    :cond_17
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7d

    if-eq p2, p3, :cond_7d

    if-nez p2, :cond_7d

    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "miui_unmute_by_settings"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2e

    move v2, v4

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    if-eqz v2, :cond_37

    const-string v4, "[tryBlockMusicUnmute]DON\'T block due to unmute by settings."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_37
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.notification.MiuiMusicMuteActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v5}, Landroid/media/AudioServiceInjector;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_54

    const-string v4, "[tryBlockMusicUnmute]DON\'T block due to none action exist."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_54
    const-string/jumbo v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    if-eqz v6, :cond_6f

    invoke-virtual {v6}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6f

    const-string v7, "[tryBlockMusicUnmute]Haha..... will try block the unmute action."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_6f
    const-string v4, "[tryBlockMusicUnmute]DON\'T block since not under ZEN_MODE_MIUI_SILENT."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_74} :catch_76

    nop

    goto :goto_7d

    :catch_76
    move-exception v2

    const-string v4, "[tryBlockMusicUnmute]DON\'T block since exception occurs."

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_7d
    :goto_7d
    return v3
.end method

.method public static tryBlockMusicUnmuteDone(Landroid/content/Context;)V
    .registers 5

    const-string v0, "AudioService"

    if-nez p0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_unmute_by_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    move v3, v2

    :cond_15
    move v1, v3

    if-eqz v1, :cond_2f

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.MUSIC_UNMUTE_BY_USER_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "[tryBlockMusicUnmuteDone]DONE....."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_34

    :cond_2f
    const-string v2, "[tryBlockMusicUnmuteDone]RETURN....."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_35

    :goto_34
    goto :goto_3b

    :catch_35
    move-exception v1

    const-string v2, "[tryBlockMusicUnmuteDone]exception occurs."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    return-void
.end method

.method private static updateMusicStreamVolume(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    const-string/jumbo v1, "reloadMusicVolume"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2f

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1b} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1b} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1b} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_2f

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_30

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2f

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2f

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :cond_2f
    :goto_2f
    nop

    :goto_30
    return-void
.end method

.method public static updateNotificationMode(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :goto_a
    :try_start_a
    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_49

    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    invoke-static {v1}, Landroid/media/AudioServiceInjector;->getMiuiNatureSoundStatus(Ljava/lang/String;)Z

    move-result v5

    move v0, v5

    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v5, v5, v4

    if-eq v0, v5, :cond_3c

    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aput-boolean v0, v5, v4

    sput v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v5, v5, v4

    if-ne v5, v7, :cond_3c

    sget-boolean v5, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v5, :cond_3c

    sget-boolean v5, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    if-nez v5, :cond_3c

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateSunriseAndSunsetTime(Landroid/content/Context;)V

    :cond_3c
    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v5, v5, v4

    if-ne v5, v7, :cond_46

    sget-object v5, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aput-object v1, v5, v4

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_49
    sput-boolean v6, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    const/4 v4, 0x0

    :goto_4c
    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    array-length v5, v5

    if-ge v4, v5, :cond_5d

    sget-object v5, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v5, v5, v4

    if-ne v5, v7, :cond_5a

    sput-boolean v7, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    goto :goto_5d

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_5d
    :goto_5d
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNotificationMode: mRandomSoundAtLeastOne="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_77
    .catchall {:try_start_a .. :try_end_77} :catchall_dc

    sget-boolean v3, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    if-ne v3, v7, :cond_7d

    sput-boolean v6, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    :cond_7d
    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_7f
    :try_start_7f
    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_a0

    sget-object v5, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    move v3, v5

    if-eqz v3, :cond_9d

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v5, v4

    if-eq v3, v5, :cond_9d

    sget-object v5, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aput v3, v5, v4
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9d} :catch_a1

    :cond_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    :cond_a0
    goto :goto_b8

    :catch_a1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get random notification settings provider value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotificationMode():\n mRandomSound[]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n mTimeAndSoundNumParameters[]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_dc
    move-exception v4

    :try_start_dd
    monitor-exit v3
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v4
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static updateSunriseAndSunsetTime(Landroid/content/Context;)V
    .registers 3

    const-string v0, "AudioService"

    const-string/jumbo v1, "updateSunriseAndSunsetTime sendBroadcast!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.media.update.sunrise.sunset.time"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static wasStreamActiveRecently(II)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
