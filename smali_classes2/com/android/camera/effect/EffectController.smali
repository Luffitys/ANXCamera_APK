.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$EffectRectAttribute;,
        Lcom/android/camera/effect/EffectController$EffectChangedListener;,
        Lcom/android/camera/effect/EffectController$EffectChangeType;
    }
.end annotation


# static fields
.field private static final BLUR_ALPHA_FRAME_NUM:I = 0x8

.field public static final EFFECT_ALL_CHANGE_TYPES:[I

.field public static final EFFECT_CHANGE_BEAUTY:I = 0x3

.field public static final EFFECT_CHANGE_FILTER:I = 0x1

.field public static final EFFECT_CHANGE_FOCUS_PEAK:I = 0x4

.field public static final EFFECT_CHANGE_GRADIENTER:I = 0x6

.field public static final EFFECT_CHANGE_STICKER:I = 0x2

.field public static final EFFECT_CHANGE_TILT:I = 0x5

.field private static final MAX_BLUR_ALPHA:I = 0xd4

.field private static final TAG:Ljava/lang/String; = "EffectController"

.field private static sInstance:Lcom/android/camera/effect/EffectController;


# instance fields
.field private mBeautyEnable:Z

.field private mBeautyFrameReady:Z

.field private mBlur:Z

.field private mBlurStep:I

.field private mChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/effect/EffectController$EffectChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSticker:Ljava/lang/String;

.field private mDeviceRotation:F

.field private mDrawGradienter:Z

.field private mDrawPeaking:Z

.field private mDrawTilt:Z

.field private mEffectId:I

.field private mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field private mFilterInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsDrawMainFrame:Z

.field private mLiveFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mNeedDestroyMakeup:Z

.field private mOrientation:I

.field private mOverrideAiEffectIndex:I

.field private mOverrideEffectIndex:I

.field private mTiltShiftMaskAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/EffectController;->EFFECT_ALL_CHANGE_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$1;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    return-void
.end method

.method private convertToFilterScene(I)Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NONE:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object p0

    :cond_0
    sget-object p0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object p0

    :cond_1
    sget-object p0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->AI:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object p0

    :cond_2
    sget-object p0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object p0

    :cond_3
    sget-object p0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->BEAUTY:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object p0

    :cond_4
    sget-object p0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    return-object p0
.end method

.method private getAiSceneRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2

    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2
.end method

.method private getBeautyRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2

    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2
.end method

.method private getDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I
    .locals 2

    sget-object p0, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/16 v0, 0x3c

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    const/16 v1, 0x50

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    const/16 p1, 0x46

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 p0, 0x64

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    return p1

    :pswitch_2
    return v0

    :pswitch_3
    const/16 p0, 0x32

    return p0

    :pswitch_4
    return p1

    :cond_0
    :pswitch_5
    return v1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/EffectController;
    .locals 2

    const-class v0, Lcom/android/camera/effect/EffectController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/effect/EffectController;

    invoke-direct {v1}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    :cond_0
    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLightingRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2

    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2
.end method

.method private getMakeupRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 3

    new-instance p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    invoke-direct {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;-><init>()V

    new-instance v0, Lcom/android/camera/effect/ArcsoftBeautyProcessor;

    invoke-direct {v0}, Lcom/android/camera/effect/ArcsoftBeautyProcessor;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10e

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->setRotation(I)V

    invoke-static {}, Lcom/android/camera/fragment/beauty/BeautyParameters;->getInstance()Lcom/android/camera/fragment/beauty/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/beauty/BeautyParameters;->setMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->setBeautyProcessor(Lcom/miui/filtersdk/beauty/BeautyProcessor;)V

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->initBeautyProcessor(II)V

    new-instance v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;Z)V

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2
.end method

.method private getNormalRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2

    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2
.end method

.method private getPrivateRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 15

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p5

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_a

    if-nez p3, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-eq v8, v0, :cond_0

    if-gez v8, :cond_a

    :cond_0
    if-nez p3, :cond_3

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-eq v8, v0, :cond_3

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_5

    :cond_3
    :goto_0
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    if-eqz v0, :cond_4

    move v12, v10

    goto :goto_1

    :cond_4
    move v12, v11

    :goto_1
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    if-eqz v0, :cond_5

    move v13, v10

    goto :goto_2

    :cond_5
    move v13, v11

    :goto_2
    new-instance v14, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-eqz v12, :cond_6

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_3
    move-object v3, v0

    if-eqz v13, :cond_7

    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_4
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {v7, v14}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    if-nez v12, :cond_8

    if-eqz v13, :cond_9

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_9
    :goto_5
    move v0, v10

    goto :goto_6

    :cond_a
    move v0, v11

    :goto_6
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-virtual {v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_d

    if-nez p3, :cond_b

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    if-eq v8, v1, :cond_b

    if-gez v8, :cond_d

    if-nez v0, :cond_d

    :cond_b
    if-eqz p4, :cond_c

    new-instance v0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_7

    :cond_c
    new-instance v0, Lcom/android/camera/effect/renders/GradienterEffectRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :goto_7
    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    move v0, v10

    :cond_d
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-virtual {v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    const/4 v12, 0x3

    if-nez v1, :cond_17

    invoke-static {}, Lcom/mi/config/b;->xj()Z

    move-result v1

    if-eqz v1, :cond_17

    if-nez p3, :cond_e

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    if-eq v8, v1, :cond_e

    if-gez v8, :cond_17

    if-nez v0, :cond_17

    :cond_e
    if-nez p3, :cond_12

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    if-eq v8, v0, :cond_12

    invoke-virtual {v7, v12}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_c

    :cond_11
    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_c

    :cond_12
    :goto_8
    new-instance v13, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_9

    :cond_13
    new-instance v0, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_9
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    goto :goto_a

    :cond_14
    new-instance v1, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v1, v6}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_a
    invoke-direct {v3, v6, v0, v1, v11}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_b

    :cond_15
    new-instance v0, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_b
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {v7, v13}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_16
    :goto_c
    move v0, v10

    :cond_17
    const-string v1, "is_camera_replace_higher_cost_effect"

    invoke-static {v1, v11}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_20

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-virtual {v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_20

    if-nez p3, :cond_18

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    if-eq v8, v1, :cond_18

    if-gez v8, :cond_20

    if-nez v0, :cond_20

    :cond_18
    if-nez p3, :cond_1c

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    if-eq v8, v0, :cond_1c

    invoke-virtual {v7, v12}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_d

    :cond_19
    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_11

    :cond_1a
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_11

    :cond_1b
    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_11

    :cond_1c
    :goto_d
    new-instance v12, Lcom/android/camera/effect/renders/PipeRenderPair;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v7, v11}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_e

    :cond_1d
    new-instance v0, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_e
    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v7, v10}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    goto :goto_f

    :cond_1e
    new-instance v1, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v1, v6}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_f
    invoke-direct {v3, v6, v0, v1, v11}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v7, v9}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_10

    :cond_1f
    new-instance v0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v0, v6}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_10
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {v7, v12}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    goto :goto_11

    :cond_20
    move v10, v0

    :cond_21
    :goto_11
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/mi/config/b;->qj()Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez p4, :cond_23

    if-nez p3, :cond_22

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    if-eq v8, v0, :cond_22

    if-gez v8, :cond_23

    if-nez v10, :cond_23

    :cond_22
    new-instance v0, Lcom/android/camera/effect/renders/FocusPeakingRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-direct {v0, v6, v1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_23
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_25

    if-nez p3, :cond_24

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    if-eq v8, v0, :cond_24

    if-gez v8, :cond_25

    if-nez v10, :cond_25

    :cond_24
    new-instance v0, Lcom/android/camera/effect/renders/StickerRender;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getCurrentSticker()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/camera/effect/renders/StickerRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/fragment/beauty/BeautyParameters;->getInstance()Lcom/android/camera/fragment/beauty/BeautyParameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/StickerRender;->getMakeupProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/beauty/BeautyParameters;->setStickerMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_25
    if-nez p3, :cond_26

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV2RGB:I

    if-eq v8, v0, :cond_26

    if-gez v8, :cond_27

    if-nez v10, :cond_27

    :cond_26
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV2RGB:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/camera/effect/renders/YuvToRgbRender;

    invoke-direct {v0, v6, v8}, Lcom/android/camera/effect/renders/YuvToRgbRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_27
    if-nez p3, :cond_28

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    if-eq v8, v0, :cond_28

    if-gez v8, :cond_29

    if-nez v10, :cond_29

    :cond_28
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Lcom/android/camera/effect/renders/RgbToYuvRender;

    invoke-direct {v0, v6, v8}, Lcom/android/camera/effect/renders/RgbToYuvRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v7, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_29
    return-object v7
.end method

.method private getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 2

    invoke-direct {p0, p3}, Lcom/android/camera/effect/EffectController;->convertToFilterScene(I)Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    move-result-object v0

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NONE:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    if-ne v0, v1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 3

    if-gez p4, :cond_0

    return-object p2

    :cond_0
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v1, 0x0

    if-ne p4, v0, :cond_2

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-direct {v1, p1, p0}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2

    :cond_2
    sget v0, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    if-ne p4, v0, :cond_4

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    sget p0, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    invoke-direct {v1, p1, p0}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :cond_3
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p2

    :cond_4
    invoke-virtual {p2, p4}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-static {p4}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result p3

    sget-object v0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRenderById: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-le p3, v0, :cond_6

    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_6

    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    aget-object p3, v0, p3

    invoke-static {p3}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFilterByType(Lcom/miui/filtersdk/filter/helper/FilterType;)Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p3}, Lcom/android/camera/effect/EffectController;->getDegree(Lcom/miui/filtersdk/filter/helper/FilterType;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->setDegree(I)V

    :cond_5
    new-instance p0, Lcom/android/camera/effect/renders/WrapperRender;

    invoke-direct {p0, p1, p4, v0}, Lcom/android/camera/effect/renders/WrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    invoke-virtual {p2, p0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_6
    return-object p2
.end method

.method private getStickerRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/effect/EffectController;->getRenderByCategory(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;IZ)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2

    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/camera/effect/EffectController;->getRenderById(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    return-object p2
.end method

.method private initAiSceneFilterInfo()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->AI:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v0}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->AI_SCENE_FILTER_ID_0_NONE:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v6, 0x5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v6, v4}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v4

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v5, v4, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private initLightingFilterInfo()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->LIGHTING:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v0}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/FilterInfo;

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v6, 0x6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v6, v4}, Lcom/android/camera/effect/FilterInfo;->getId(II)I

    move-result v4

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v5, v4, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private initNormalFilterInfoNew()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v2, 0x0

    const v3, 0x7f0f01fa

    const v4, 0x7f080044

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->NORMAL:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v0}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v7, v0, v3

    sget-object v8, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    move v11, v4

    move v12, v5

    move v4, v6

    goto/16 :goto_2

    :pswitch_0
    const/16 v4, 0x82

    const v5, 0x7f0f008e

    const v6, 0x7f08003f

    goto/16 :goto_1

    :pswitch_1
    const/16 v4, 0x78

    const v5, 0x7f0f008b

    const v6, 0x7f08003c

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x6e

    const v5, 0x7f0f008a

    const v6, 0x7f08003b

    goto :goto_1

    :pswitch_3
    const/16 v4, 0x64

    const v5, 0x7f0f0090

    const v6, 0x7f080041

    goto :goto_1

    :pswitch_4
    const/16 v4, 0x5a

    const v5, 0x7f0f008d

    const v6, 0x7f08003e

    goto :goto_1

    :pswitch_5
    const/16 v4, 0x50

    const v5, 0x7f0f0094

    const v6, 0x7f080046

    goto :goto_1

    :pswitch_6
    const/16 v4, 0x46

    const v5, 0x7f0f0093

    const v6, 0x7f080045

    goto :goto_1

    :pswitch_7
    const/16 v4, 0x3c

    const v5, 0x7f0f008c

    const v6, 0x7f08003d

    goto :goto_1

    :pswitch_8
    const/16 v4, 0x32

    const v5, 0x7f0f0096

    const v6, 0x7f080048

    goto :goto_1

    :pswitch_9
    const/16 v4, 0x28

    const v5, 0x7f0f0092

    const v6, 0x7f080043

    goto :goto_1

    :pswitch_a
    const/16 v4, 0x1e

    const v5, 0x7f0f0091

    const v6, 0x7f080042

    goto :goto_1

    :pswitch_b
    const/16 v4, 0x14

    const v5, 0x7f0f008f

    const v6, 0x7f080040

    goto :goto_1

    :pswitch_c
    const/16 v4, 0xa

    const v5, 0x7f0f0095

    const v6, 0x7f080047

    :goto_1
    move v11, v5

    move v12, v6

    :goto_2
    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v9, 0x1

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-object v8, v5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    move v11, v5

    goto :goto_3

    :cond_0
    move v5, v12

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    move v4, v11

    goto/16 :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPrivateFilterInfo()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/FilterInfo;->setNeedRect(Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/FilterInfo;->setNeedRect(Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private initStickerFilterInfo()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/effect/FilterInfo;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v2, 0x0

    const v3, 0x7f0f01fa

    const v4, 0x7f0801f4

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/camera/effect/FilterInfo;-><init>(IIII)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;->STICKER:Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    invoke-static {v0}, Lcom/miui/filtersdk/filter/helper/FilterFactory;->getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v7, v0, v3

    sget-object v8, Lcom/android/camera/effect/EffectController$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    move v11, v4

    move v12, v5

    move v4, v6

    goto :goto_2

    :pswitch_0
    const/16 v4, 0x32

    const v5, 0x7f0f03b0

    const v6, 0x7f0801ef

    goto :goto_1

    :pswitch_1
    const/16 v4, 0x2d

    const v5, 0x7f0f03b1

    const v6, 0x7f0801f0

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x28

    const v5, 0x7f0f03b3

    const v6, 0x7f0801f2

    goto :goto_1

    :pswitch_3
    const/16 v4, 0x1e

    const v5, 0x7f0f03b5

    const v6, 0x7f0801f5

    goto :goto_1

    :pswitch_4
    const/16 v4, 0x14

    const v5, 0x7f0f03b4

    const v6, 0x7f0801f3

    goto :goto_1

    :pswitch_5
    const/16 v4, 0xa

    const v5, 0x7f0f03b2

    const v6, 0x7f0801f1

    :goto_1
    move v11, v5

    move v12, v6

    :goto_2
    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    new-instance v5, Lcom/android/camera/effect/FilterInfo;

    const/4 v9, 0x3

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-object v8, v5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/effect/FilterInfo;-><init>(IIIII)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    move v11, v5

    goto :goto_3

    :cond_0
    move v5, v12

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    move v4, v11

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initAiSceneFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initPrivateFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initNormalFilterInfoNew()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initLightingFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Qc()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/camera/effect/BeautyInfoFactory;->initIndiaBeautyFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/camera/effect/BeautyInfoFactory;->initBeautyFilterInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initStickerFilterInfo()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private varargs postNotifyEffectChanged([I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectController$EffectChangedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/effect/EffectController$EffectChangedListener;->onEffectChanged([I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v0, Lcom/android/camera/effect/EffectController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/camera/EffectChangedListenerController;->addEffectChangedListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearEffectAttribute()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput v1, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 2

    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$1;)V

    return-object v0
.end method

.method public enableMakeup(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    :cond_0
    new-array p1, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public findLiveFilter(Landroid/content/Context;I)Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->getLiveFilterList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;

    iget v1, v0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;->id:I

    if-ne v1, p2, :cond_1

    return-object v0

    :cond_2
    return-object p1
.end method

.method public getBlurAnimationValue()I
    .locals 4

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    :cond_1
    iget p0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz p0, :cond_2

    if-gt p0, v2, :cond_2

    mul-int/lit16 p0, p0, 0xd4

    div-int/2addr p0, v2

    return p0

    :cond_2
    return v1
.end method

.method public getCurrentSticker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceRotation()F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return p0
.end method

.method public getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object p0
.end method

.method public getEffectCount(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getEffectForPreview(Z)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    monitor-exit p0

    return p1

    :cond_0
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    monitor-exit p0

    return p1

    :cond_1
    iget p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEffectForSaving(Z)I
    .locals 2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result p0

    return p0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 4

    invoke-static {}, Lcom/mi/config/b;->tj()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p2, p5}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p5, v1, :cond_2

    invoke-static {p5}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    :cond_2
    sget-object v1, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectGroup: renderId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectGroup: category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/android/camera/effect/EffectController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid renderId "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getLightingRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getAiSceneRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectController;->getMakeupRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/camera/effect/EffectController;->getStickerRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/camera/effect/EffectController;->getBeautyRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_5
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getNormalRenderNew(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    goto :goto_0

    :pswitch_6
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/EffectController;->getPrivateRender(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object p0, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getFilterInfo(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getInvertFlag()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget p0, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return p0
.end method

.method public getLiveFilterList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f030004

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;

    invoke-direct {v3}, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;-><init>()V

    iput v2, v3, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;->id:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;->imageViewRes:Landroid/graphics/drawable/Drawable;

    aget-object v4, v1, v2

    iput-object v4, v3, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;->name:Ljava/lang/String;

    aget-object v4, p1, v2

    iput-object v4, v3, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$LiveFilterItem;->directoryName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mLiveFilters:Ljava/util/List;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return p0
.end method

.method public getTiltShiftMaskAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return p0
.end method

.method public hasEffect()Z
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mi/config/b;->tj()Z

    move-result v0

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    invoke-static {v1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/config/a;->Uc()Z

    move-result v7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v10

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderWaterMarkOpen()Z

    move-result v11

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorWaterMarkOpen()Z

    move-result v12

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    move v8, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v3

    :goto_2
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :cond_5
    :goto_4
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBackGroundBlur()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result p0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBeautyFrameReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    return p0
.end method

.method public isBlurAnimationDone()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    if-gez p0, :cond_0

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

.method public isDrawGradienter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    return p0
.end method

.method public isDrawTilt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    return p0
.end method

.method public isEffectPageSelected()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMainFrameDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    return p0
.end method

.method public isMakeupEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    return p0
.end method

.method public isNeedDrawPeaking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return p0
.end method

.method public isNeedRect(I)Z
    .locals 2

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mFilterInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->isNeedRect()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isStickerEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public needDestroyMakeup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    return p0
.end method

.method public removeChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBeautyEnable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    sget-object v0, Lcom/android/camera/effect/EffectController;->EFFECT_ALL_CHANGE_TYPES:[I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setAiSceneEffect(I)V
    .locals 2

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideAiEffectIndex:I

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    return-void
.end method

.method public setBeautyFrameReady(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBeautyFrameReady:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x3

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setBlurEffect(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    const/16 v1, 0x8

    if-ltz v0, :cond_1

    if-ge v1, v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    iput v1, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    return-void
.end method

.method public setCurrentSticker(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/effect/EffectController;->mCurrentSticker:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDestroyMakeup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mNeedDestroyMakeup:Z

    return-void
.end method

.method public setDeviceRotation(ZF)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    :cond_0
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return-void
.end method

.method public setDrawGradienter(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawGradienter:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x6

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDrawPeaking(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setDrawTilt(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawTilt:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x5

    aput v1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    return-void
.end method

.method public setEffect(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectId:I

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectController;->postNotifyEffectChanged([I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p4, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public setInvertFlag(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p1, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return-void
.end method

.method public setLightingEffect(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return-void
.end method

.method public setTiltShiftMaskAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return-void
.end method
