.class public Lcom/android/camera/dualvideo/render/CameraItemManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraItemManager"


# instance fields
.field private final mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private final mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

.field private final mRenderLocker:Ljava/lang/Object;

.field private final mRenderableList:Ljava/util/ArrayList;

.field private final mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/gallery3d/ui/ExtTexture;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    new-instance p3, Lcom/android/camera/dualvideo/render/RegionHelper;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-direct {p3, p4, v0, v1, p2}, Lcom/android/camera/dualvideo/render/RegionHelper;-><init>(IIII)V

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initRenderableList(Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderableList()V

    return-void
.end method

.method private synthetic OooO00o(Landroid/util/SparseIntArray;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 4

    const/16 v0, 0x65

    invoke-interface {p2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawSelectWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :goto_0
    :pswitch_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_2

    :goto_1
    :pswitch_1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :goto_2
    iput-object p0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto/16 :goto_3

    :cond_0
    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    sget-object v1, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " main: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraItemManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic OooO0OO(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooO0Oo(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic OooO0o0(FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 8

    const/16 v0, 0x65

    invoke-interface {p3, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p3

    check-cast p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v7, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget v0, p3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v3, v0

    iget v0, p3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mY:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    mul-float/2addr p0, p1

    float-to-int v4, p0

    iget p0, p3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int v5, p0

    iget p0, p3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int v6, p0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic OooO0oO(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic OooO0oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectWindowFlag(Z)V

    return-void
.end method

.method static synthetic OooOO0O(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getCameraId()I

    move-result p1

    sget-object v0, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOO0o(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getCameraId()I

    move-result p1

    sget-object v0, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic OooOOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getIndexBySelelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method static synthetic OooOOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOOOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method static synthetic OooOOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOOo0(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/OooOOo;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/OooOOo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/OooOoO0;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/OooOoO0;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic OooOOoo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printRenderList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraItemManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic OooOo0(Landroid/util/SparseIntArray;ILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 p1, 0x1

    invoke-interface {p2, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic OooOo00(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method static synthetic OooOo0O(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_0
    return-void
.end method

.method static synthetic OooOo0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    :goto_0
    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic OooOoO(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setSelectWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method static synthetic OooOoO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooOoOO(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/OooOo0O;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/OooOo0O;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/Oooo0OO;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/Oooo0OO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic OooOoo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectWindowFlag(Z)V

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    invoke-interface {p1, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectedFrame(Z)V

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderTypeBySelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {p1, v0, p0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :goto_0
    return-void
.end method

.method static synthetic OooOoo0(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userdata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraItemManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic OooOooo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectedFrame(Z)V

    return-void
.end method

.method static synthetic Oooo0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic Oooo000(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectWindowFlag(Z)V

    return-void
.end method

.method static synthetic Oooo00O(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic Oooo00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    return-void
.end method

.method private synthetic Oooo0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    return-void
.end method

.method private synthetic Oooo0o0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v1, 0x1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :cond_1
    return-void
.end method

.method static synthetic Oooo0oO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getIndexBySelelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/OooOOOO;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/OooOOOO;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/OooO0OO;->OooO00o:Lcom/android/camera/dualvideo/render/OooO0OO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object p0
.end method

.method private getRenderTypeBySelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/OooOOoo;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/OooOOoo;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/o0ooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/o0ooOO0;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method private init6PatchTag()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/camera/dualvideo/render/OooO;->OooO00o:Lcom/android/camera/dualvideo/render/OooO;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initPreviewAttri()V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawSelectWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isFacingFront()Z

    move-result v3

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(ZLcom/android/camera/dualvideo/render/LayoutType;)[F

    move-result-object v7

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isFacingFront()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, v3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :goto_2
    move-object v6, v3

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    const/16 v2, 0x65

    invoke-interface {v1, v3, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setPreviewAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initSelectIndexFromSelectData()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/OooOo00;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/OooOo00;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initSelected()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/Oooo0;

    invoke-direct {v1, v0}, Lcom/android/camera/dualvideo/render/Oooo0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "CameraItemManager"

    const-string v0, "initSelected: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onTouched(II)Z
    .locals 5

    invoke-static {}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getInstance()Lcom/android/camera/dualvideo/util/CameraIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/CameraIDManager;->get6PatchToIdMap()Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/camera/dualvideo/render/Oooo00o;->OooO00o:Lcom/android/camera/dualvideo/render/Oooo00o;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/camera/dualvideo/render/Oooo00O;->OooO00o:Lcom/android/camera/dualvideo/render/Oooo00O;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    sget-object p1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {v2, p1, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, p2, :cond_3

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/camera/dualvideo/render/OooO0o;

    invoke-direct {v3, v0, p1}, Lcom/android/camera/dualvideo/render/OooO0o;-><init>(Landroid/util/SparseIntArray;I)V

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/camera/dualvideo/render/OooO0oo;->OooO00o:Lcom/android/camera/dualvideo/render/OooO0oo;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/camera/dualvideo/render/OooOooO;->OooO00o:Lcom/android/camera/dualvideo/render/OooOooO;

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->saveSelectedStatus()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private saveSelectedStatus()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/OooOOO;

    invoke-direct {v1, v0}, Lcom/android/camera/dualvideo/render/OooOOO;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateRenderableList()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)V

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


# virtual methods
.method public synthetic OooO0O0(Landroid/util/SparseIntArray;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO00o(Landroid/util/SparseIntArray;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method

.method public synthetic OooO0o(FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO0o0(FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method

.method public synthetic OooOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooOOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method

.method public synthetic OooOooO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooOoo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method

.method public synthetic Oooo0OO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->Oooo0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method

.method public synthetic Oooo0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->Oooo0o0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method

.method public changeTexture(Landroid/util/SparseIntArray;)V
    .locals 2

    const-string v0, "CameraItemManager"

    const-string v1, "changeTexture: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OoooO00;->OooO00o:Lcom/android/camera/dualvideo/render/OoooO00;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/OooO0o0;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/render/OooO0o0;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;Landroid/util/SparseIntArray;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public expandBottom()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const-string v0, "CameraItemManager"

    const-string v1, "expandBottom: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    :goto_1
    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public expandOrShrinkTop()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const-string v0, "CameraItemManager"

    const-string v1, "expandOrShrinkTop: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_3

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/render/LayoutType;->isSelectWindowType()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    if-eqz v0, :cond_4

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_2

    :pswitch_1
    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_5

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/render/LayoutType;->isSelectWindowType()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    if-eqz v0, :cond_6

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_2

    :pswitch_2
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_2

    :pswitch_3
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFullTypeRecordAttri(Lcom/android/camera/dualvideo/util/CameraTag;)Lcom/android/camera/effect/draw_mode/DrawAttribute;
    .locals 8

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->$SwitchMap$com$android$camera$dualvideo$util$CameraTag:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong record type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraItemManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :goto_0
    move-object v2, p0

    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    sget-object p1, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(ZLcom/android/camera/dualvideo/render/LayoutType;)[F

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object p1, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    sget-object p1, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    return-object p0
.end method

.method public getRenderableList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRenderableListForRecord()Ljava/util/List;
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/OoooO00;->OooO00o:Lcom/android/camera/dualvideo/render/OoooO00;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/o0ooOOo;->OooO00o:Lcom/android/camera/dualvideo/render/o0ooOOo;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/camera/dualvideo/render/OooOoo;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/dualvideo/render/OooOoo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;FLjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getVisibleRenderList()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/OooOO0o;

    invoke-direct {v1, v0}, Lcom/android/camera/dualvideo/render/OooOO0o;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public hasMiniPreview()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/OooOoOO;->OooO00o:Lcom/android/camera/dualvideo/render/OooOoOO;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public initRenderableList(Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo00()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v3, v4, v4, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v3, v4, v4, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v3, v4, v4, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v3, v4, v4, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v3, v4, v4, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v2, v3, v3, v1, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/camera/dualvideo/render/OooOooo;

    invoke-direct {v5, v3}, Lcom/android/camera/dualvideo/render/OooOooo;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/render/o0ooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/o0ooOO0;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/camera/dualvideo/render/Oooo0o0;

    invoke-direct {v5, v3}, Lcom/android/camera/dualvideo/render/Oooo0o0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Lcom/android/camera/dualvideo/render/o0ooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/o0ooOO0;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v6, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v5, v6, v4, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v3, v4, v0, v1, p1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;ZLcom/android/camera/dualvideo/render/MiscTextureManager;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initPreviewAttri()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initSelected()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->init6PatchTag()V

    return-void
.end method

.method public is6PatchWindow()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/OooOo0o;->OooO00o:Lcom/android/camera/dualvideo/render/OooOo0o;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/OooO0O0;->OooO00o:Lcom/android/camera/dualvideo/render/OooO0O0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public printRenderList()V
    .locals 2

    const-string v0, "CameraItemManager"

    const-string v1, "printRenderList: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/camera/dualvideo/render/OooOoo0;->OooO00o:Lcom/android/camera/dualvideo/render/OooOoo0;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public selectItem(Landroid/view/MotionEvent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItemManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->onTouched(II)Z

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/o00oO0o;->OooO00o:Lcom/android/camera/dualvideo/render/o00oO0o;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/Oooo0o;->OooO00o:Lcom/android/camera/dualvideo/render/Oooo0o;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->onKeyDown()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public switch6patch2preview()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->printRenderList()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/Oooo0O0;->OooO00o:Lcom/android/camera/dualvideo/render/Oooo0O0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initSelectIndexFromSelectData()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/OooOOOo;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/OooOOOo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchPreviewTo6Patch()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraItemManager"

    const-string v1, "switchPreviewTo6Patch: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/Oooo000;->OooO00o:Lcom/android/camera/dualvideo/render/Oooo000;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OooOOO0;->OooO00o:Lcom/android/camera/dualvideo/render/OooOOO0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/dualvideo/render/OooOO0O;->OooO00o:Lcom/android/camera/dualvideo/render/OooOO0O;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OooOOo0;->OooO00o:Lcom/android/camera/dualvideo/render/OooOOo0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OooOo0;->OooO00o:Lcom/android/camera/dualvideo/render/OooOo0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/OooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/OooOO0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/OooO0oO;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/OooO0oO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/OooOo;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/OooOo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchTopBottom()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const-string v0, "CameraItemManager"

    const-string v1, "switchTopBottom "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_1

    :pswitch_1
    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_1

    :pswitch_3
    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_1

    :pswitch_4
    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    goto :goto_1

    :pswitch_5
    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    :goto_1
    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2, v3, v4, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :goto_2
    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v3

    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    :goto_3
    invoke-interface {v2, v3, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v3

    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateMiniWindowLocation(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget-boolean v0, v0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget v1, v1, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget v4, v3, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setStartPosition(FF)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->updateMarginOffset(II)V

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget-boolean p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RegionHelper;->moveToEdge()V

    return v2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_5

    move v4, v2

    goto :goto_0

    :cond_5
    move v4, v1

    :goto_0
    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    cmpl-float v6, p1, v6

    if-lez v6, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v5, v3

    int-to-float v3, v5

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_1
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iput-boolean v2, v1, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    new-instance v3, Lcom/android/camera/dualvideo/render/OooOoO;

    invoke-direct {v3, p0}, Lcom/android/camera/dualvideo/render/OooOoO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/dualvideo/render/RegionHelper;->setListener(Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setStartPosition(FF)V

    return v2

    :cond_7
    return v1
.end method
