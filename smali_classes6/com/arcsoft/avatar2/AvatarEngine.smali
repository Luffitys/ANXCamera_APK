.class public Lcom/arcsoft/avatar2/AvatarEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/arcsoft/avatar2/AvatarConfig;


# static fields
.field private static final a:Ljava/lang/String; = "AvatarEngine"


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/util/TreeMap;

.field private e:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mimoji_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mimoji_avatarengine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->b:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->c:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->d:Ljava/util/TreeMap;

    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->e:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetHeadWearGrayTexture(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/arcsoft/avatar2/AvatarEngine;)Ljava/util/TreeMap;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->d:Ljava/util/TreeMap;

    return-object p0
.end method

.method static synthetic b(Lcom/arcsoft/avatar2/AvatarEngine;)I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->b:I

    return p0
.end method

.method private native nativeAvatarProcess(JIII[B[BIZI)I
.end method

.method private native nativeAvatarProcessEx(JIII[Ljava/nio/ByteBuffer;[BIZI)I
.end method

.method private native nativeAvatarProcessEx2(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;[BIZI)I
.end method

.method private native nativeAvatarProfile(JLjava/lang/String;III[BIZLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileInfo;Lcom/arcsoft/avatar2/AvatarConfig$UpdateProgressCallback;)I
.end method

.method private native nativeAvatarRender(JIIIIZ[I)I
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDestroy(J)I
.end method

.method private native nativeGetConfig(JIILcom/arcsoft/avatar2/AvatarConfig$GetConfigCallback;)I
.end method

.method private native nativeGetConfigValue(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)I
.end method

.method private native nativeGetSupportConfigType(JILcom/arcsoft/avatar2/AvatarConfig$GetSupportConfigTypeCallback;)I
.end method

.method private native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeInit(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeIsSupportSwitchGender(J)Z
.end method

.method private native nativeLoadColorValue(Ljava/lang/String;)I
.end method

.method private native nativeLoadConfig(JLjava/lang/String;)I
.end method

.method private native nativeOutlineCreateEngine(JLjava/lang/String;)I
.end method

.method private native nativeOutlineDestroyEngine(J)I
.end method

.method private native nativeOutlineProcess(J[BIIIILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
.end method

.method private native nativeOutlineProcessEx(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
.end method

.method private native nativeProcessOutlineExpression(J[BIIIIZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
.end method

.method private native nativeProcessWithInfo(J[BIIIIZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
.end method

.method private native nativeProcessWithInfoToEdit(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)I
.end method

.method private native nativeProcessWithInfoToPreview(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)Z
.end method

.method private native nativeReadRGBA(JLjava/lang/String;II[B)I
.end method

.method private native nativeReleaseRender(J)I
.end method

.method private native nativeRenderBackgroundWithImageData(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ[I)I
.end method

.method private native nativeRenderBackgroundWithTexture(JIIZ[F)I
.end method

.method private native nativeRenderThumb(JIIII[BIII[FF)I
.end method

.method private native nativeRenderWithBackground(JLjava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I
.end method

.method private native nativeSaveConfig(JLjava/lang/String;)I
.end method

.method private native nativeSetAnimationParam(JZI)I
.end method

.method private native nativeSetConfig(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I
.end method

.method private native nativeSetHairRenderParam(JZZ)I
.end method

.method private native nativeSetHeadWearGrayTexture(JLjava/lang/String;)I
.end method

.method private native nativeSetHeadWearTexture(JLjava/lang/String;)I
.end method

.method private native nativeSetProcessInfo(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
.end method

.method private native nativeSetRenderScene(JZF[F)I
.end method

.method private native nativeSetTemplate(JLjava/lang/String;)I
.end method

.method private native nativeSetTongueAnimationParam(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;)I
.end method

.method private native nativeSetToothTexture(JLjava/lang/String;)I
.end method

.method private native nativeSwitchGender(JZ)I
.end method

.method private native nativeUnInit(J)I
.end method


# virtual methods
.method public declared-synchronized avatarProcess(III[B[BIZI)I
    .locals 13

    move-object v12, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v12, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeAvatarProcess(JIII[B[BIZI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized avatarProcessEx(III[Ljava/nio/ByteBuffer;[BIZI)I
    .locals 13

    move-object v12, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v12, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeAvatarProcessEx(JIII[Ljava/nio/ByteBuffer;[BIZI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized avatarProcessEx2(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;[BIZI)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeAvatarProcessEx2(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;[BIZI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public avatarProcessWithInfo([BIIIIZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
    .locals 12

    const-string v0, "avatarProcessWithInfo"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    move-object v1, p0

    iget-wide v2, v1, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeProcessWithInfo(J[BIIIIZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    move-result v1

    const-string v2, "performance"

    invoke-static {v2, v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public avatarProcessWithInfoEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)I
    .locals 9

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeProcessWithInfoToEdit(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)I

    move-result p0

    return p0
.end method

.method public declared-synchronized avatarProfile(Ljava/lang/String;III[BIZLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileInfo;Lcom/arcsoft/avatar2/AvatarConfig$UpdateProgressCallback;)I
    .locals 15

    move-object v14, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v14, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeAvatarProfile(JLjava/lang/String;III[BIZLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileInfo;Lcom/arcsoft/avatar2/AvatarConfig$UpdateProgressCallback;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized avatarRender(IIIIZ[I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeAvatarRender(JIIIIZ[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkOutlineInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
    .locals 3

    const-string p0, "CheckOutLine"

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-static {p0, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getFaceCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getFaceCount()I

    move-result v1

    if-le v1, v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterIsNull()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "shelterFlags == null"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getFaceCount()I

    move-result p0

    if-gtz p0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->checkOutLineInfo()I

    move-result p0

    return p0
.end method

.method public declared-synchronized createOutlineEngine(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeOutlineCreateEngine(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeDestroy(J)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    const-string v0, "performance"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroyOutlineEngine()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeOutlineDestroyEngine(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfig(II)Ljava/util/ArrayList;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v2, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    new-instance v6, Lcom/arcsoft/avatar2/AvatarEngine$2;

    invoke-direct {v6, p0, v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine$2;-><init>(Lcom/arcsoft/avatar2/AvatarEngine;Ljava/util/ArrayList;I)V

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeGetConfig(JIILcom/arcsoft/avatar2/AvatarConfig$GetConfigCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeGetConfigValue(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)I

    iget v0, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceColorID:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->b:I

    iget p1, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configLipColorID:I

    iput p1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getExtraSceneName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->e:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->e:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    return-object v1

    :pswitch_0
    const-string p0, "PrincessHat"

    return-object p0

    :pswitch_1
    const-string p0, "AstronautHelmet"

    return-object p0

    :pswitch_2
    const-string p0, "ShibaInuHat"

    return-object p0

    :pswitch_3
    const-string p0, "EmojiHelmet"

    return-object p0

    :pswitch_4
    const-string p0, "ClownHat"

    return-object p0

    :pswitch_5
    const-string p0, "MiRabbitHat"

    return-object p0

    :pswitch_6
    const-string p0, "WizardHat"

    return-object p0

    :pswitch_7
    const-string p0, "ChickenHat"

    return-object p0

    :pswitch_8
    const-string p0, "AngelWingsCap"

    return-object p0

    :cond_0
    const-string p0, "RabbitEars"

    return-object p0

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getSupportConfigType(I)Ljava/util/ArrayList;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    new-instance v3, Lcom/arcsoft/avatar2/AvatarEngine$1;

    invoke-direct {v3, p0, v0}, Lcom/arcsoft/avatar2/AvatarEngine$1;-><init>(Lcom/arcsoft/avatar2/AvatarEngine;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeGetSupportConfigType(JILcom/arcsoft/avatar2/AvatarConfig$GetSupportConfigTypeCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTemplatePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeGetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "init"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeInit(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string p2, "AvatarEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "performance"

    const-string p2, "init"

    invoke-static {p1, p2}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isSupportSwitchGender()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeIsSupportSwitchGender(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadColorValue(Ljava/lang/String;)I
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeLoadColorValue(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadConfig(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "loadConfig"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeLoadConfig(JLjava/lang/String;)I

    const-string p1, "performance"

    const-string v0, "loadConfig"

    invoke-static {p1, v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public nativeProcessWithInfoToPreview(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)Z
    .locals 9

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeProcessWithInfoToPreview(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized outlineProcess([BIIII)I
    .locals 10

    monitor-enter p0

    :try_start_0
    new-instance v9, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-direct {v9}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;-><init>()V

    const-string v0, "outlineProcess"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeOutlineProcess(J[BIIIILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    move-result p1

    const-string p2, "performance"

    const-string p3, "outlineProcess"

    invoke-static {p2, p3}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "CheckOutLine"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "nativeOutlineProcess = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/arcsoft/avatar2/AvatarEngine;->checkOutlineInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized outlineProcessEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;I)I
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-direct {v6}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;-><init>()V

    const-string v0, "outlineProcessEx"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeOutlineProcessEx(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    move-result p1

    const-string p2, "performance"

    const-string v0, "outlineProcessEx"

    invoke-static {p2, v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "CheckOutLine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeOutlineProcess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/arcsoft/avatar2/AvatarEngine;->checkOutlineInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processOutlineExpression([BIIIIZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
    .locals 13

    move-object v12, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v12, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeProcessOutlineExpression(J[BIIIIZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readRGBA(Ljava/lang/String;II[B)I
    .locals 7

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeReadRGBA(JLjava/lang/String;II[B)I

    move-result p0

    return p0
.end method

.method public declared-synchronized releaseRender()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "releaseRender"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeReleaseRender(J)I

    const-string v0, "performance"

    const-string v1, "releaseRender"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public renderBackgroundWithImageData(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ[I)I
    .locals 7

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeRenderBackgroundWithImageData(JLcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ[I)I

    move-result p0

    return p0
.end method

.method public renderBackgroundWithTexture(IIZ[F)I
    .locals 7

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeRenderBackgroundWithTexture(JIIZ[F)I

    move-result p0

    return p0
.end method

.method public declared-synchronized renderThumb(IIII[BIII[FF)I
    .locals 15

    move-object v14, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "renderThumb"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v2, v14, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeRenderThumb(JIIII[BIII[FF)I

    move-result v0

    const-string v1, "performance"

    const-string v2, "renderThumb"

    invoke-static {v1, v2}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public renderWithBackground(Ljava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeRenderWithBackground(JLjava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I

    move-result v0

    return v0
.end method

.method public declared-synchronized saveConfig(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSaveConfig(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAnimationParam(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetAnimationParam(JZI)I

    return-void
.end method

.method public declared-synchronized setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->b:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->b:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->d:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/arcsoft/avatar2/AvatarEngine;->d:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v3, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    iget v4, p0, Lcom/arcsoft/avatar2/AvatarEngine;->c:I

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    iget-object v3, p0, Lcom/arcsoft/avatar2/AvatarEngine;->d:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-direct {p0, v1, v2, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetConfig(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->c:I

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetConfig(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHairRenderParam(ZZ)I
    .locals 2

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetHairRenderParam(JZZ)I

    move-result p0

    return p0
.end method

.method public setHeadWearGrayPath(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget p1, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cartoon_HEADWEAR/style21/Tex_21_gray_alpha20.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->a(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setHeadWearTexture(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetHeadWearTexture(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setProcessInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I
    .locals 2

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetProcessInfo(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized setRenderScene(ZF)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetRenderScene(JZF[F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRenderScene3F(ZF[F)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetRenderScene(JZF[F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTemplatePath(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "setTemplatePath"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetTemplate(JLjava/lang/String;)I

    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarEngine;->g:Ljava/lang/String;

    const-string p1, "performance"

    const-string v0, "setTemplatePath"

    invoke-static {p1, v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTongueAnimationParam(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;)I
    .locals 2

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetTongueAnimationParam(JLcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;)I

    move-result p0

    return p0
.end method

.method public setToothTexture(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSetToothTexture(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized switchGender(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeSwitchGender(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unInit()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "unInit"

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/arcsoft/avatar2/AvatarEngine;->f:J

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeUnInit(J)I

    move-result v0

    const-string v1, "performance"

    const-string v2, "unInit"

    invoke-static {v1, v2}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AvatarEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninit res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
