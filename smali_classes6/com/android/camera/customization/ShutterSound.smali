.class public Lcom/android/camera/customization/ShutterSound;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "sounds/"

.field public static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "key_shutter_sound"

.field private static final LOG_TAG:Ljava/lang/String; = "ShutterSound"

.field private static commonSoundIds:[I

.field private static final commonSounds:[Ljava/lang/String;

.field private static sAvailableSounds:Ljava/util/List;

.field private static final soundNames:[Ljava/lang/String;


# instance fields
.field private final folderName:Ljava/lang/String;

.field private final mCover:I

.field private final mTitle:I

.field private soundIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "camera_click.ogg"

    const-string v1, "camera_focus.ogg"

    const-string v2, "video_record_start.ogg"

    const-string v3, "video_record_end.ogg"

    const-string v4, "camera_fast_burst.ogg"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/customization/ShutterSound;->soundNames:[Ljava/lang/String;

    const-string v0, "sounds/sound_shuter_delay_bee.ogg"

    const-string v1, "/system/media/audio/ui/NumberPickerValueChange.ogg"

    const-string v2, "sounds/audio_capture.ogg"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/customization/ShutterSound;->commonSounds:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/customization/ShutterSound;->commonSoundIds:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->loadAvailableSounds()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/camera/customization/ShutterSound;->mCover:I

    iput p1, p0, Lcom/android/camera/customization/ShutterSound;->mTitle:I

    iput-object p2, p0, Lcom/android/camera/customization/ShutterSound;->folderName:Ljava/lang/String;

    sget-object p1, Lcom/android/camera/customization/ShutterSound;->soundNames:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/camera/customization/ShutterSound;->soundIds:[I

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/camera/customization/ShutterSound;->soundIds:[I

    array-length p3, p2

    if-ge p1, p3, :cond_0

    const/4 p3, -0x1

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isCommonSound(I)Z
    .locals 1

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadAvailableSounds()Ljava/util/List;
    .locals 5

    sget-object v0, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f100256

    const v3, 0x7f08056a

    const-string v4, "default"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f100255

    const v3, 0x7f080569

    const-string v4, "art"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f100258

    const v3, 0x7f08056d

    const-string v4, "old"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/ShutterSound;

    const v2, 0x7f100257

    const v3, 0x7f08056c

    const-string v4, "modern"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/camera/customization/ShutterSound;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sput-object v0, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    return-object v0
.end method

.method private static loadCommonSound(ILandroid/media/SoundPool;)I
    .locals 2

    sget-object v0, Lcom/android/camera/customization/ShutterSound;->commonSounds:[Ljava/lang/String;

    aget-object v0, v0, p0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/customization/ShutterSound;->commonSounds:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/android/camera/customization/ShutterSound;->loadFromAsset(Ljava/lang/String;Landroid/media/SoundPool;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/customization/ShutterSound;->commonSounds:[Ljava/lang/String;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    sget-object v0, Lcom/android/camera/customization/ShutterSound;->commonSoundIds:[I

    aput p1, v0, p0

    return p1
.end method

.method public static loadFromAsset(Ljava/lang/String;Landroid/media/SoundPool;)I
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, p0, v0}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, "ShutterSound"

    const-string p1, "IOException occurs when closing Camera Sound AssetFileDescriptor."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v1
.end method

.method public static loadSound(Landroid/media/SoundPool;I)I
    .locals 3

    invoke-static {p1}, Lcom/android/camera/customization/ShutterSound;->isCommonSound(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x5

    sget-object v0, Lcom/android/camera/customization/ShutterSound;->commonSoundIds:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1, p0}, Lcom/android/camera/customization/ShutterSound;->loadCommonSound(ILandroid/media/SoundPool;)I

    move-result p0

    return p0

    :cond_0
    aget p0, v0, p1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->read()I

    move-result v0

    sget-object v1, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/ShutterSound;

    invoke-direct {v0, p1}, Lcom/android/camera/customization/ShutterSound;->loaded(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/camera/customization/ShutterSound;->soundPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/camera/customization/ShutterSound;->loadFromAsset(Ljava/lang/String;Landroid/media/SoundPool;)I

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/android/camera/customization/ShutterSound;->setSoundId(II)V

    :cond_2
    invoke-direct {v0, p1}, Lcom/android/camera/customization/ShutterSound;->soundId(I)I

    move-result p0

    return p0
.end method

.method private loaded(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/ShutterSound;->soundIds:[I

    aget p0, p0, p1

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static persist(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static read()I
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "key_shutter_sound"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    return v2
.end method

.method public static readSoundName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->read()I

    move-result v0

    sget-object v1, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/ShutterSound;

    iget v0, v0, Lcom/android/camera/customization/ShutterSound;->mTitle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static release()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/camera/customization/ShutterSound;->commonSoundIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/customization/ShutterSound;

    invoke-direct {v1}, Lcom/android/camera/customization/ShutterSound;->releaseSounds()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private releaseSounds()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/customization/ShutterSound;->soundIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSoundId(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/ShutterSound;->soundIds:[I

    aput p2, p0, p1

    return-void
.end method

.method private soundId(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/ShutterSound;->soundIds:[I

    aget p0, p0, p1

    return p0
.end method

.method public static tryPlaySound(ILandroid/media/SoundPool;FILjava/util/ArrayList;)I
    .locals 10

    invoke-static {p0}, Lcom/android/camera/customization/ShutterSound;->isCommonSound(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    add-int/lit8 p0, p0, -0x5

    sget-object p4, Lcom/android/camera/customization/ShutterSound;->commonSoundIds:[I

    aget v0, p4, p0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/camera/customization/ShutterSound;->loadCommonSound(ILandroid/media/SoundPool;)I

    move-result p0

    return p0

    :cond_0
    aget v3, p4, p0

    const/4 v6, 0x0

    add-int/lit8 v7, p3, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    move v4, p2

    move v5, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->read()I

    move-result v0

    sget-object v2, Lcom/android/camera/customization/ShutterSound;->sAvailableSounds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/ShutterSound;

    invoke-direct {v0, p0}, Lcom/android/camera/customization/ShutterSound;->loaded(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {v0, p0}, Lcom/android/camera/customization/ShutterSound;->soundId(I)I

    move-result v4

    const/4 v7, 0x0

    add-int/lit8 v8, p3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p1

    move v5, p2

    move v6, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {v0, p0}, Lcom/android/camera/customization/ShutterSound;->soundId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    invoke-direct {v0, p0}, Lcom/android/camera/customization/ShutterSound;->soundId(I)I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {v0, p0}, Lcom/android/camera/customization/ShutterSound;->soundPath(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/camera/customization/ShutterSound;->loadFromAsset(Ljava/lang/String;Landroid/media/SoundPool;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/android/camera/customization/ShutterSound;->setSoundId(II)V

    invoke-direct {v0, p0}, Lcom/android/camera/customization/ShutterSound;->soundId(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cover()I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/ShutterSound;->mCover:I

    return p0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/ShutterSound;->folderName:Ljava/lang/String;

    return-object p0
.end method

.method public soundPath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/customization/ShutterSound;->folderName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/camera/customization/ShutterSound;->soundNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public title()I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/ShutterSound;->mTitle:I

    return p0
.end method
