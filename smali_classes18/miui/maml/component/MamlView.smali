.class public Lmiui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;
.implements Lmiui/maml/util/MamlViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/component/MamlView$OnExternCommandListener;,
        Lmiui/maml/component/MamlView$InnerView;
    }
.end annotation


# static fields
.field private static final BLUR_VAR_NAME:Ljava/lang/String; = "__blur_ratio"

.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlView"

.field private static final VERSION:Ljava/lang/String; = "1.0.0"

.field private static final VERSION_CODE:I = 0x1


# instance fields
.field private mAutoFinishRoot:Z

.field private mAutoRemoveCache:Z

.field private mCanvasParamsChanged:Z

.field private final mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/component/MamlView$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinished:Z

.field private mHasDelay:Z

.field private mLastBlurRatio:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mView:Lmiui/maml/component/MamlView$InnerView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mAutoFinishRoot:Z

    new-instance v0, Lmiui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlView$1;-><init>(Lmiui/maml/component/MamlView;)V

    iput-object v0, p0, Lmiui/maml/component/MamlView;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lmiui/maml/ResourceLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Lmiui/maml/component/MamlView;->load(Landroid/content/Context;Lmiui/maml/ResourceLoader;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mAutoFinishRoot:Z

    new-instance v0, Lmiui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlView$1;-><init>(Lmiui/maml/component/MamlView;)V

    iput-object v0, p0, Lmiui/maml/component/MamlView;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-direct {p0, p1, p2}, Lmiui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/component/MamlView;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/component/MamlView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/component/MamlView;->mCanvasParamsChanged:Z

    return v0
.end method

.method static synthetic access$200(Lmiui/maml/component/MamlView;)F
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mX:F

    return v0
.end method

.method static synthetic access$300(Lmiui/maml/component/MamlView;)F
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mY:F

    return v0
.end method

.method static synthetic access$400(Lmiui/maml/component/MamlView;)F
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mScale:F

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/component/MamlView;)I
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    return v0
.end method

.method static synthetic access$600(Lmiui/maml/component/MamlView;)I
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    return v0
.end method

.method private blurBackground()V
    .registers 5

    const-string v0, "__blur_ratio"

    :try_start_2
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->isMamlBlurWindow()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/maml/data/Variables;->existsDouble(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    if-gez v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_33

    :cond_2d
    const/16 v1, 0x64

    if-le v0, v1, :cond_33

    const/16 v0, 0x64

    :cond_33
    :goto_33
    iget v1, p0, Lmiui/maml/component/MamlView;->mLastBlurRatio:I

    if-eq v0, v1, :cond_5e

    iput v0, p0, Lmiui/maml/component/MamlView;->mLastBlurRatio:I

    if-nez v0, :cond_44

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_57

    :cond_44
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->blurRatio:F

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_57
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lmiui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_5f

    :cond_5e
    goto :goto_63

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_63
    return-void
.end method

.method private finish()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/component/MamlView;->mFinished:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lmiui/maml/component/MamlView;->mAutoFinishRoot:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mFinished:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->detachFromVsync()V

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/data/Variables;->reset()V

    invoke-direct {p0}, Lmiui/maml/component/MamlView;->removeAccessHelperRef()V

    iget-boolean v1, p0, Lmiui/maml/component/MamlView;->mAutoRemoveCache:Z

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    :cond_2e
    iput-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    :cond_30
    return-void
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lmiui/maml/ResourceLoader;
    .registers 6

    const/4 v0, 0x1

    if-eq p4, v0, :cond_17

    const/4 v0, 0x2

    if-eq p4, v0, :cond_11

    const/4 v0, 0x3

    if-eq p4, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    new-instance v0, Lmiui/maml/util/FolderResourceLoader;

    invoke-direct {v0, p2}, Lmiui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_11
    new-instance v0, Lmiui/maml/util/AssetsResourceLoader;

    invoke-direct {v0, p1, p2}, Lmiui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_17
    new-instance v0, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v0, p2, p3}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private initMamlview(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setFocusableInTouchMode(Z)V

    if-eqz p2, :cond_3b

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lmiui/maml/component/MamlView$InnerView;

    invoke-direct {v0, p0, p1}, Lmiui/maml/component/MamlView$InnerView;-><init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    invoke-virtual {p0, v1, v0}, Lmiui/maml/component/MamlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p2, p0}, Lmiui/maml/ScreenElementRoot;->setViewManager(Lmiui/maml/util/MamlViewManager;)V

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v2, Lmiui/maml/component/MamlView$2;

    invoke-direct {v2, p0}, Lmiui/maml/component/MamlView$2;-><init>(Lmiui/maml/component/MamlView;)V

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->init()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    throw v0
.end method

.method private load(Landroid/content/Context;Lmiui/maml/ResourceLoader;Z)V
    .registers 8

    iput-boolean p3, p0, Lmiui/maml/component/MamlView;->mAutoRemoveCache:Z

    if-eqz p2, :cond_24

    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    new-instance v1, Lmiui/maml/ScreenElementRoot;

    new-instance v2, Lmiui/maml/ScreenContext;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    invoke-direct {v1, v2}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    invoke-direct {p0, p1, v1}, Lmiui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    :cond_24
    return-void
.end method

.method private removeAccessHelperRef()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setMamlAccessHelper(Lmiui/maml/util/MamlAccessHelper;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/maml/util/MamlAccessHelper;->removeRoot()V

    :cond_d
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    :cond_15
    invoke-static {}, Lmiui/maml/util/Utils;->triggerGC()V

    :cond_18
    return-void
.end method

.method public clearBitmapCache()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-static {}, Lmiui/maml/ResourceManager;->clear()V

    :cond_d
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lmiui/maml/util/MamlAccessHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public doRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    invoke-virtual {v0}, Lmiui/maml/component/MamlView$InnerView;->postInvalidate()V

    invoke-direct {p0}, Lmiui/maml/component/MamlView;->blurBackground()V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lmiui/maml/component/MamlView;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getMamlVersionCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getMamlVersionName()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method public getVariableNumber(Ljava/lang/String;)D
    .registers 4

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVariableString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setMamlViewOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->attachToVsync()V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_37

    new-instance v0, Lmiui/maml/util/MamlAccessHelper;

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lmiui/maml/util/MamlAccessHelper;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/view/View;)V

    iput-object v0, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_37
    return-void
.end method

.method public isLoaded()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public onDestory()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "MamlView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/component/MamlView;->finish()V

    invoke-static {}, Lmiui/maml/util/Utils;->triggerGC()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_d

    const-string v1, "accessibilityText"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    sub-int v1, p4, p2

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-string v3, "view_width"

    invoke-virtual {v0, v3, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    sub-int v1, p5, p3

    int-to-float v1, v1

    iget-object v2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-string v3, "view_height"

    invoke-virtual {v0, v3, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    move v1, p2

    move v2, p3

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_33
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_53

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_33

    :cond_53
    int-to-float v4, v1

    iget-object v5, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-string v6, "view_x"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    int-to-float v4, v2

    iget-object v5, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-string v6, "view_y"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget-object v4, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_74
    return-void
.end method

.method public onPause()V
    .registers 3

    const-string v0, "MamlView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    const-string v0, "MamlView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v1

    iget-boolean v2, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v2, v1, :cond_16

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    :cond_16
    iget-object v2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1c
    if-nez v0, :cond_27

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v1, 0x1

    :goto_28
    return v1
.end method

.method public putVariableNumber(Ljava/lang/String;D)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    :cond_b
    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public removeRelatedBitmapsRef()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->clearByKeys()V

    :cond_d
    return-void
.end method

.method public requestUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_7
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    :cond_8
    return-void
.end method

.method public setAutoFinishRoot(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method public setCacheSize(I)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceManager;->setCacheSize(I)V

    :cond_d
    return-void
.end method

.method public final setKeepResource(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    :cond_7
    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/component/MamlView$OnExternCommandListener;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_9
    iput-object v0, p0, Lmiui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_7
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_7
    return-void
.end method

.method public setScale(FII)V
    .registers 5

    iput p1, p0, Lmiui/maml/component/MamlView;->mScale:F

    iput p2, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    iput p3, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mCanvasParamsChanged:Z

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_10
    return-void
.end method

.method public setTouchable(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setTouchable(Z)V

    :cond_7
    return-void
.end method

.method public setTranslate(FF)V
    .registers 4

    iput p1, p0, Lmiui/maml/component/MamlView;->mX:F

    iput p2, p0, Lmiui/maml/component/MamlView;->mY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mCanvasParamsChanged:Z

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_e
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    goto :goto_13

    :cond_9
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0x8

    if-ne p1, v0, :cond_13

    :cond_10
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    :cond_13
    :goto_13
    return-void
.end method

.method public setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lmiui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
