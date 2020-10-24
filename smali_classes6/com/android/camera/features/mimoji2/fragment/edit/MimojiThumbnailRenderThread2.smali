.class public final Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static BACKGROUND_COLOR:[F = null

.field private static final MSG_AVATAR_INIT:I = 0x20

.field public static final MSG_DRAW_REQUESTED:I = 0x10

.field private static final MSG_QUIT_REQUESTED:I = 0x40

.field private static final MSG_RESET_DATA:I = 0x60

.field private static final MSG_SET_CONFIG:I = 0x50

.field private static final MSG_START_EMO_PICTURE:I = 0x80

.field private static final MSG_START_EMO_VIDEO:I = 0x70

.field private static final MSG_UPDATE_THUMB:I = 0x30

.field private static final RESOURCE_DESC:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

.field private mConfigInfoThumUtils2:Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;

.field private mContext:Landroid/content/Context;

.field private mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentConfigPath:Ljava/lang/String;

.field private mEGLWrapper2:Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;

.field private volatile mEglContextPrepared:Z

.field private mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

.field private mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

.field private final mHeight:I

.field private volatile mIsEmoticonForThumbnail:Z

.field private volatile mIsRendering:Z

.field private final mLock:Ljava/lang/Object;

.field private volatile mReady:Z

.field private volatile mRequestDraw:I

.field private volatile mRequestRelease:Z

.field private volatile mRestStopRenderThumbnail:Z

.field private volatile mStopRenderThumbnail:Z

.field private mUpdateHandler:Landroid/os/Handler;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->BACKGROUND_COLOR:[F

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->RESOURCE_DESC:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3de0ded3    # 0.1098f
        0x3df0d845    # 0.1176f
        0x3e0068dc    # 0.1254f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x7f10035b
        0x7f100369
        0x7f10035f
        0x7f100363
        0x7f100365
        0x7f100364
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mReady:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestRelease:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mStopRenderThumbnail:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRestStopRenderThumbnail:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsEmoticonForThumbnail:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEglContextPrepared:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mWidth:I

    iput p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHeight:I

    iput-object p4, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doEmoVideo(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doEmoPicture(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doDraw(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doInit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doSetConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doReset()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doQuit()V

    return-void
.end method

.method private doDraw(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEglContextPrepared:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsEmoticonForThumbnail:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->getEmoticonThumbnail()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestDraw:I

    const/4 v2, 0x1

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestDraw:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestDraw:I

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->drawThumbnail(Z)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private doEmoPicture(Ljava/util/ArrayList;)V
    .locals 32

    move-object/from16 v1, p0

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void doDraw[reset]  mAvatarForEdit null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->initEmoticon()V

    iget-object v0, v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->stopRecording()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xfa

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    const/4 v6, 0x1

    :try_start_0
    iget-object v7, v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->renderImageData(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIMOJI_GIF_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "jpg"

    invoke-static {v9, v10}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_2

    iget-object v9, v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/camera/ActivityBase;

    invoke-interface {v9}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v10

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0xb4

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-virtual/range {v10 .. v31}, Lcom/android/camera/storage/ImageSaver;->addSimpleImage([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;ILandroid/hardware/camera2/CaptureResult;)V

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-ne v4, v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    invoke-interface {v2, v8, v0, v7}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->updateEmoticonPictureProgress(Ljava/lang/String;Lcom/arcsoft/avatar2/emoticon/EmoInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v7, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimoji void getEmoticonPicture[] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v4, v0, :cond_4

    invoke-interface {v2}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->coverEmoticonError()V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private doEmoVideo(Ljava/util/ArrayList;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->initEmoticon()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->stopRecording()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " videoPath :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    const v8, 0x5f5e100

    const-string v9, "video/avc"

    invoke-virtual/range {v3 .. v9}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->startRecording(Ljava/lang/String;IIIILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->emoProcess(Lcom/arcsoft/avatar2/emoticon/EmoInfo;)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const-string p1, "release_avatar"

    const-string v0, "-> for break ---"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCountEmotGif:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xfa

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->coverEmoticonError()V

    :cond_3
    return-void
.end method

.method private doInit(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string p1, "mimoji void doInit[configPath] null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string v2, "init mAvatarForEdit"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->setForceDisabled(Z)V

    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestRelease:Z

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_1

    new-instance v0, Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarEngine;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TRACK_DATA:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->FACE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->init(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getTemplatePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getTemplatePath()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v3, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCurrentConfigPath:Ljava/lang/String;

    new-instance p1, Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;

    invoke-direct {p1}, Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mConfigInfoThumUtils2:Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;

    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestRelease:Z

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doUpdate()V

    return v2
.end method

.method private doQuit()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestRelease:Z

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->release()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method private doReset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mStopRenderThumbnail:Z

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->draw(Z)V

    return-void
.end method

.method private doSetConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    return-void
.end method

.method private doUpdate()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->draw(Z)V

    return-void
.end method

.method private getEmoticonThumbnail()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string v0, "mimoji void doDraw[reset]  mAvatarForEdit null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->initEmoticon()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->getEmoList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xfa

    if-ge v2, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iget-object v4, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    sget-object v6, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->CONFIG_EMO_THUM_SIZE:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    sget-object v7, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->CONFIG_EMO_THUM_SIZE:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v4, v3, v6, v7}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->renderEmoThumb(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->RESOURCE_DESC:[I

    aget v6, v6, v2

    invoke-interface {v5, v2, v3, v6}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->updateEmoticonThumbnailProgress(ILcom/arcsoft/avatar2/emoticon/EmoInfo;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v4

    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsEmoticonForThumbnail:Z

    if-nez v3, :cond_4

    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string v0, "mimoji void doDraw[reset] mEmoManager.renderEmoThumb fail"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->coverEmoticonError()V

    :cond_4
    return-void
.end method

.method private prepare()V
    .locals 3

    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mWidth:I

    iget v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEGLWrapper2:Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;->makeCurrent()Z

    return-void
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->unInit()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->destroy()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEGLWrapper2:Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;->release()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEGLWrapper2:Lcom/android/camera/features/mimoji2/fragment/edit/EGLWrapper2;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->release()V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    :cond_2
    return-void
.end method

.method private resetConfig(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCurrentConfigPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doInit(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string p1, "mimoji  resetConfig mAvatarForEdit null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mConfigInfoThumUtils2:Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;->reset(Lcom/arcsoft/avatar2/AvatarEngine;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v1, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/avatar2/util/AvatarConfigUtils;->getCurrentConfigIdWithType(ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v3, v2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    if-ne v3, v0, :cond_2

    move-object v1, v2

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public draw(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestRelease:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEglContextPrepared:Z

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestDraw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRequestDraw:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public drawForEmoticonPicture(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->initEmoticon()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x80

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public drawForEmoticonThumbnail()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->quitEmoticonVideo()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsEmoticonForThumbnail:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->draw(Z)V

    return-void
.end method

.method public drawThumbnail(Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCurrentConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCurrentConfigPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->doInit(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string p1, "mimoji  drawThumbnail mAvatarForEdit null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->resetData()V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSelectType()I

    move-result v0

    sget-object v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select  Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    sget-object v2, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimojiLevelBean2s.size   :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v5, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tempMimojiLevelBeans2 mConfigTypeName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mConfigTypeName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v4, Lcom/android/camera/features/mimoji2/bean/MimojiLevelBean2;->mThumnails:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    goto/16 :goto_3

    :cond_4
    move v5, v2

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asainfo is null   curIndex : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mConfigInfoThumUtils2:Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;

    iget-object v8, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v9

    iget v9, v9, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->gender:I

    sget-object v10, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->BACKGROUND_COLOR:[F

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/camera/features/mimoji2/utils/ConfigInfoThumUtils2;->renderThumb(Lcom/arcsoft/avatar2/AvatarEngine;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;I[F)V

    iget-object v6, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRestStopRenderThumbnail:Z

    if-eqz v7, :cond_6

    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mStopRenderThumbnail:Z

    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRestStopRenderThumbnail:Z

    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->resetData()V

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setTypeNeedUpdate(IZ)V

    invoke-direct {p0, v4}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->resetConfig(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->draw(Z)V

    return-void

    :cond_6
    iget-boolean v7, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mStopRenderThumbnail:Z

    if-eqz v7, :cond_7

    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mStopRenderThumbnail:Z

    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    invoke-direct {p0, v4}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->resetConfig(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setTypeNeedUpdate(IZ)V

    const/4 p1, 0x6

    iput p1, v6, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    const/4 v7, 0x5

    iput v7, v6, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "OUTER"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "INNER"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "TYPE"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mUpdateHandler:Landroid/os/Handler;

    if-eqz v7, :cond_8

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, v4}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->resetConfig(Ljava/util/ArrayList;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setTypeNeedUpdate(IZ)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->setForceDisabled(Z)V

    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    return-void
.end method

.method public getHandler()Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mReady:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    return-object p0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "render thread is not ready yet"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getIsRendering()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    return p0
.end method

.method public initAvatar(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initEmoticon()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mAvatarForEdit:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_GIF:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceColorID:I

    new-instance v4, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;

    invoke-direct {v4, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;-><init>(Lcom/arcsoft/avatar2/AvatarEngine;Ljava/lang/String;ILcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configFaceColorID:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->setFaceColorId(I)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setEmoManager(Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;)V

    return-void
.end method

.method public quit()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public quitEmoticonVideo()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEmoManager:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    return-void
.end method

.method public recordForEmoticonVideo(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->initEmoticon()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->setStopRender(Z)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x60

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string v2, "prepare render thread: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEglContextPrepared:Z

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->prepare()V

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mEglContextPrepared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string v5, "FATAL: failed to prepare render thread"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->release()V

    :goto_0
    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mReady:Z

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mReady:Z

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    const-string v0, "prepare render thread: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mHandler:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setResetStopRender(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mRestStopRenderThumbnail:Z

    :cond_0
    return-void
.end method

.method public setStopRender(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mIsRendering:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mStopRenderThumbnail:Z

    :cond_0
    return-void
.end method

.method public setUpdateHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public waitUntilReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitUntilReady() interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
