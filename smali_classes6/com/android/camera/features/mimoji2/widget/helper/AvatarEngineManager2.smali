.class public Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONFIGTYPE_EARRING:I = 0x10

.field public static final CONFIGTYPE_EAR_SHAPE:I = 0x18

.field public static final CONFIGTYPE_EYEBROW_COLOR:I = 0x13

.field public static final CONFIGTYPE_EYEBROW_SHAPE:I = 0x19

.field public static final CONFIGTYPE_EYEGLASS:I = 0x9

.field public static final CONFIGTYPE_EYEGLASS_COLOR:I = 0xa

.field public static final CONFIGTYPE_EYELASH:I = 0x12

.field public static final CONFIGTYPE_EYE_COLOR:I = 0x4

.field public static final CONFIGTYPE_EYE_SHAPE:I = 0x15

.field public static final CONFIGTYPE_FACE_COLOR:I = 0x3

.field public static final CONFIGTYPE_FEATURED_FACE:I = 0x14

.field public static final CONFIGTYPE_FRECKLE:I = 0x7

.field public static final CONFIGTYPE_HAIR_COLOR:I = 0x2

.field public static final CONFIGTYPE_HAIR_STYLE:I = 0x1

.field public static final CONFIGTYPE_HEADWEAR:I = 0xc

.field public static final CONFIGTYPE_HEADWEAR_COLOR:I = 0xd

.field public static final CONFIGTYPE_LENS_COLOR:I = 0xb

.field public static final CONFIGTYPE_LIPS_COLOR:I = 0x5

.field public static final CONFIGTYPE_MOUSE_SHAPE:I = 0x16

.field public static final CONFIGTYPE_MUSTACHE:I = 0xe

.field public static final CONFIGTYPE_MUSTACHE_COLOR:I = 0xf

.field public static final CONFIGTYPE_NEVUS:I = 0x8

.field public static final CONFIGTYPE_NOSE_SHAPE:I = 0x17

.field public static final CONFIG_EMO_THUM_SIZE:Landroid/util/Size;

.field public static final CONFIG_PATH_FAKE_BEAR:Ljava/lang/String; = "bear"

.field public static final CONFIG_PATH_FAKE_CAT:Ljava/lang/String; = "cat"

.field public static final CONFIG_PATH_FAKE_FROG:Ljava/lang/String; = "frog"

.field public static final CONFIG_PATH_FAKE_PIG:Ljava/lang/String; = "pig"

.field public static final CONFIG_PATH_FAKE_RABBIT:Ljava/lang/String; = "rabbit"

.field public static final CONFIG_PATH_FAKE_RABBIT2:Ljava/lang/String; = "rabbit2"

.field public static final CONFIG_PATH_FAKE_ROYAN:Ljava/lang/String; = "royan"

.field public static final CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

.field public static final EXTRA_RESOURCE:[I

.field public static final FACE_MODEL:Ljava/lang/String;

.field public static final GIF_HEIGHT:I = 0x12c

.field public static final GIF_WIDTH:I = 0x12c

.field public static final TEMPLATE_PATH_BEAR:Ljava/lang/String;

.field public static final TEMPLATE_PATH_BG:Ljava/lang/String;

.field public static final TEMPLATE_PATH_CAT:Ljava/lang/String;

.field public static final TEMPLATE_PATH_FROG:Ljava/lang/String;

.field public static final TEMPLATE_PATH_GIF:Ljava/lang/String;

.field public static final TEMPLATE_PATH_HUMAN:Ljava/lang/String;

.field public static final TEMPLATE_PATH_PIG:Ljava/lang/String;

.field public static final TEMPLATE_PATH_RABBIT:Ljava/lang/String;

.field public static final TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

.field public static final TEMPLATE_PATH_ROYAN:Ljava/lang/String;

.field public static final THUMB_HEIGHT:I = 0x1f4

.field public static final THUMB_WIDTH:I = 0x1f4

.field public static final TRACK_DATA:Ljava/lang/String;

.field public static final TempEditConfigPath:Ljava/lang/String;

.field public static final TempOriginalConfigPath:Ljava/lang/String;

.field private static mInstance:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;


# instance fields
.field private mASAvatarConfigValue:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

.field private mASAvatarConfigValueDefault:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

.field private mAllNeedUpdate:Z

.field private mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

.field private mAvatarRef:I

.field private mBackgroundInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mColorLayoutManagerMap:Ljava/util/Map;

.field private mConfigMap:Ljava/util/Map;

.field private mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

.field private mInnerConfigSelectMap:Ljava/util/Map;

.field private mInterruptMap:Ljava/util/Map;

.field private mIsColorSelected:Z

.field private mNeedUpdateMap:Ljava/util/Map;

.field private mSelectTabIndex:I

.field private mSelectType:I

.field private mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mTypeList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "track_data.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->FACE_MODEL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "background_v_0_0_0_4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_BG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gif_v_0_0_0_7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_GIF:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cartoon_xiaomi_v_0_0_0_63"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bear_v_0_0_0_5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pig_v_0_0_0_3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_PIG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "royan_v_0_0_0_7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_ROYAN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rabbit_v_0_0_0_4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_RABBIT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rabbit2_v_0_0_0_8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cat_v_0_0_0_13"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "frog_v_0_0_0_12"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->MODEL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "prehuman_config_info_v_0_0_0_2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "origin_config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempOriginalConfigPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "edit_config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempEditConfigPath:Ljava/lang/String;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->CONFIG_EMO_THUM_SIZE:Landroid/util/Size;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->EXTRA_RESOURCE:[I

    return-void

    :array_0
    .array-data 4
        0xd
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectType:I

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectTabIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mTypeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mConfigMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mBackgroundInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mNeedUpdateMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInterruptMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mColorLayoutManagerMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAllNeedUpdate:Z

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatarRef:I

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mIsColorSelected:Z

    return-void
.end method

.method public static filterTypeTitle(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0x19

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;
    .locals 2

    const-class v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInstance:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-direct {v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;-><init>()V

    sput-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInstance:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    :cond_0
    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInstance:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMimojiConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairStyleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_hairstyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceShapeID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_feature_face"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyeShapeID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_eye_shape"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configMouthShapeID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_mouth_shape"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configBeardStyleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_mustache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFrecklesID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_freckle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyewearStyleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_eyeglass"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_headwear"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEarShapeID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_ear"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyelashStyleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_eyelash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyebrowShapeID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_eyebrow_shape"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configNoseShapeID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_nose"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEarringStyleID:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_earing"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized isExtraResource(I)Z
    .locals 4

    const-class v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->EXTRA_RESOURCE:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->EXTRA_RESOURCE:[I

    aget v3, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v3, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isPreCartoonModel(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "frog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pig"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "royan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rabbit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rabbit2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPrefabModel(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static replaceTabTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0xe

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const p1, 0x7f1003af

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f100390

    goto :goto_0

    :pswitch_2
    const p1, 0x7f100396

    goto :goto_0

    :cond_0
    const p1, 0x7f100394

    goto :goto_0

    :cond_1
    const p1, 0x7f100398

    goto :goto_0

    :cond_2
    const p1, 0x7f100392

    goto :goto_0

    :cond_3
    const p1, 0x7f1003ad

    goto :goto_0

    :cond_4
    const p1, 0x7f1003b1

    goto :goto_0

    :cond_5
    const p1, 0x7f1003a0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showConfigTypeName(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    const/16 v1, 0x19

    if-eq p0, v1, :cond_0

    const/16 v1, 0x14

    if-eq p0, v1, :cond_0

    const/16 v1, 0x15

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized addAvatarConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)Lcom/arcsoft/avatar2/AvatarEngine;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "AvatarEngineManager2"

    const-string v0, "AvatarConfig.ASAvatarConfigInfo is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_1

    const-string v0, "AvatarEngineManager2"

    const-string v1, "avatar create"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarEngine;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->FACE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->init(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->createOutlineEngine(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v1, 0x0

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectType:I

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectTabIndex:I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mColorLayoutManagerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mASAvatarConfigValue:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    return-object p0
.end method

.method public declared-synchronized getAvatar()Lcom/arcsoft/avatar2/AvatarEngine;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackgroundInfos()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mBackgroundInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getColorLayoutManagerMap(I)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mColorLayoutManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    return-object p0
.end method

.method public getColorType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/16 p0, 0xc

    if-eq p1, p0, :cond_4

    const/16 p0, 0xe

    if-eq p1, p0, :cond_3

    const/16 p0, 0x14

    if-eq p1, p0, :cond_2

    const/16 p0, 0x16

    if-eq p1, p0, :cond_1

    const/16 p0, 0x19

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x13

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 p0, 0xf

    return p0

    :cond_4
    const/16 p0, 0xd

    return p0

    :cond_5
    const/4 p0, 0x2

    return p0
.end method

.method public declared-synchronized getConfigList(I)Ljava/util/ArrayList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConfigTypeForIndex(I)Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mTypeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mTypeList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigTypeList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mTypeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public declared-synchronized getEmoManager()Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInnerConfigSelectIndex(I)F
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getInterruptIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInterruptMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSelectConfigList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mConfigMap:Ljava/util/Map;

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    :goto_0
    return-object p0
.end method

.method public getSelectType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectType:I

    return p0
.end method

.method public getSelectTypeIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectTabIndex:I

    return p0
.end method

.method public getSubConfigColorList(I)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/16 p1, 0x13

    goto :goto_0

    :cond_1
    const/16 p1, 0xf

    goto :goto_0

    :cond_2
    const/16 p1, 0xd

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSubConfigList(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectType:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_a

    const/16 v0, 0xc

    if-eq p2, v0, :cond_9

    const/16 v0, 0xe

    if-eq p2, v0, :cond_8

    const/16 v0, 0x19

    if-eq p2, v0, :cond_7

    const/16 v0, 0x8

    if-eq p2, v0, :cond_5

    const/16 v0, 0x9

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f1003ae

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f1003ac

    goto/16 :goto_0

    :pswitch_1
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f100391

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f100395

    goto/16 :goto_0

    :pswitch_2
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    iget-object v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iput v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f100396

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f100386

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f100387

    goto/16 :goto_0

    :cond_4
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f100394

    goto/16 :goto_0

    :cond_5
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iput v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v1, 0x7f100398

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f1003ab

    goto :goto_0

    :cond_7
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f100393

    goto :goto_0

    :cond_8
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f1003ad

    goto :goto_0

    :cond_9
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f1003a1

    goto :goto_0

    :cond_a
    new-instance p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    iput v0, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigType:I

    const v0, 0x7f1003a0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSubConfigs:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initUpdatePara()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInterruptMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mNeedUpdateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAllNeedUpdate:Z

    return-void
.end method

.method public isColorSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mIsColorSelected:Z

    return p0
.end method

.method public isNeedUpdate(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mNeedUpdateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mNeedUpdateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAllNeedUpdate:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public putColorLayoutManagerMap(ILcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mColorLayoutManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putConfigList(ILjava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "AvatarEngineManager2"

    const-string v2, "avatar create"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarEngine;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->FACE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->init(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->createOutlineEngine(Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatarRef:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatarRef:I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AvatarEngineManager2"

    const-string v1, "avatar destroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetData()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mASAvatarConfigValueDefault:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mASAvatarConfigValue:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setASAvatarConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->initUpdatePara()V

    return-void
.end method

.method public setASAvatarConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mASAvatarConfigValue:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value \u5c5e\u6027:gender = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->gender:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configHairStyleID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairStyleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configHairColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configHairColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configFaceColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configFaceColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configEyeColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyeColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyeColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyeColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configLipColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configLipColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configLipColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configLipColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configHairHighlightColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairHighlightColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configHairHighlightColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairHighlightColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configFrecklesID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFrecklesID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configNevusID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configNevusID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyewearStyleID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyewearStyleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyewearFrameID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyewearFrameID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyewearFrameValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyewearFrameValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configEyewearLensesID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyewearLensesID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyewearLensesValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyewearLensesValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configHeadwearStyleID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configHeadwearColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configHeadwearColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configBeardStyleID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configBeardStyleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configBeardColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configBeardColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configBeardColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configBeardColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configEarringStyleID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEarringStyleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyelashStyleID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyelashStyleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyebrowColorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyebrowColorID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyebrowColorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyebrowColorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configFaceShapeID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceShapeID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configFaceShapeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceShapeValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configEyeShapeID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyeShapeID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyeShapeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyeShapeValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configMouthShapeID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configMouthShapeID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configMouthShapeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configMouthShapeValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configNoseShapeID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configNoseShapeID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configNoseShapeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configNoseShapeValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configEarShapeID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEarShapeID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEarShapeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEarShapeValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " configEyebrowShapeID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyebrowShapeID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configEyebrowShapeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyebrowShapeValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairStyleID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairColorID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceColorID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceShapeID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyeColorValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configLipColorID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFrecklesID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configNevusID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyewearStyleID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configBeardStyleID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configBeardColorID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyelashStyleID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyebrowColorID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyeShapeID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configMouthShapeID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configNoseShapeID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEarShapeID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configEyebrowShapeID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearColorID:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setASAvatarConfigValueDefault(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V
    .locals 0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mASAvatarConfigValueDefault:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    return-void
.end method

.method public setAllNeedUpdate(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mAllNeedUpdate:Z

    iput-boolean p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mIsColorSelected:Z

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInterruptMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setBackgroundInfos(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mBackgroundInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mBackgroundInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setConfigTypeList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mTypeList:Ljava/util/ArrayList;

    return-void
.end method

.method public declared-synchronized setEmoManager(Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInnerConfigSelectIndex(IF)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInnerConfigSelectMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInterruptIndex(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mInterruptMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIsColorSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mIsColorSelected:Z

    return-void
.end method

.method public setSelectType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectType:I

    return-void
.end method

.method public setSelectTypeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mSelectTabIndex:I

    return-void
.end method

.method public setTypeNeedUpdate(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->mNeedUpdateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
