.class public Lmiui/maml/ScreenElementRoot;
.super Lmiui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;,
        Lmiui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lmiui/maml/ScreenElementRoot$ExtraResource;,
        Lmiui/maml/ScreenElementRoot$InnerGroup;,
        Lmiui/maml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field public static final CAPABILITY_ALL:I = -0x1

.field public static final CAPABILITY_CREATE_OBJ:I = 0x4

.field public static final CAPABILITY_VAR_PERSISTENCE:I = 0x2

.field public static final CAPABILITY_WEBSERVICE:I = 0x1

.field private static final DARK_MODE_COLOR:I = 0x19000000

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final MAML_INTERNAL_VERSION:I = 0x6

.field private static final MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final THEMEMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"

.field private static final VAR_MAML_VERSION:Ljava/lang/String; = "__maml_version"


# instance fields
.field protected DEFAULT_FRAME_RATE:F

.field private mAccessibleElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowScreenRotation:Z

.field private mAnimationItems:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/animation/BaseAnimation$AnimationItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAutoDarkenWallpaper:Z

.field private mBlurWindow:Z

.field private mCacheDir:Ljava/lang/String;

.field private mCapability:I

.field private mCheckPoint:J

.field private mClearCanvas:Z

.field private mConfig:Lmiui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected mContext:Lmiui/maml/ScreenContext;

.field protected mController:Lmiui/maml/RendererController;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mElements:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lmiui/maml/CommandTriggers;

.field private mFinished:Z

.field private mFontScale:F

.field protected mFrameRate:F

.field private mFrameRateVar:Lmiui/maml/data/IndexedVariable;

.field private mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

.field private mHoverMatrix:Landroid/graphics/Matrix;

.field protected mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mIsDarkWallpaperMode:Z

.field private mKeepResource:Z

.field private mLoaded:Z

.field private mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

.field private mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/component/MamlSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

.field private mNeedReset:Z

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private mRendererControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mRootTag:Ljava/lang/String;

.field private mSaveConfigOnlyInPause:Z

.field private mSaveConfigViaProvider:Z

.field private mScale:F

.field private mScaleByDensity:Z

.field public mShowDebugLayout:Z

.field private mShowFramerate:Z

.field private mSoundManager:Lmiui/maml/SoundManager;

.field private mStylesManager:Lmiui/maml/StylesManager;

.field private mSupportAccessibilityService:Z

.field private mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field protected mTargetScreenHeight:I

.field protected mTargetScreenWidth:I

.field private mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

.field private mTouchBeginX:Lmiui/maml/data/IndexedVariable;

.field private mTouchBeginY:Lmiui/maml/data/IndexedVariable;

.field private mTouchX:Lmiui/maml/data/IndexedVariable;

.field private mTouchY:Lmiui/maml/data/IndexedVariable;

.field private mTouchable:Z

.field private mTransparentSurface:Z

.field private mUseCustomizedDarkModeWallpaper:Z

.field protected mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

.field private mVersion:I

.field private mViewManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/util/MamlViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mBlurWindow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchable:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    new-instance v1, Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v1}, Lmiui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    iput-object p0, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    new-instance v1, Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v1, p0}, Lmiui/maml/data/VariableUpdaterManager;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v3, "touch_x"

    invoke-direct {v1, v3, v2, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v3, "touch_y"

    invoke-direct {v1, v3, v2, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v3, "touch_begin_x"

    invoke-direct {v1, v3, v2, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v3, "touch_begin_y"

    invoke-direct {v1, v3, v2, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v3, "touch_begin_time"

    invoke-direct {v1, v3, v2, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v3, "intercept_sys_touch"

    invoke-direct {v1, v3, v2, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/SoundManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-direct {v0, v1}, Lmiui/maml/SoundManager;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    new-instance v0, Lmiui/maml/SystemCommandListener;

    invoke-direct {v0, p0}, Lmiui/maml/SystemCommandListener;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTriggers;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    return-object v0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lmiui/maml/util/ConfigFile;

    invoke-direct {v0}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v1, v0}, Lmiui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    :cond_24
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0}, Lmiui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/ConfigFile$Variable;

    iget-object v2, v1, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v3, "string"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, v1, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_6b

    :cond_50
    iget-object v2, v1, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v3, "number"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    :try_start_5a
    iget-object v2, v1, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v4, v5, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v2

    :cond_6b
    :goto_6b
    goto :goto_2e

    :cond_6c
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0}, Lmiui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/Task;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_76

    :cond_d7
    return-void
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1f

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .registers 5

    const-string v0, "useVariableUpdater"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    goto :goto_17

    :cond_12
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    :goto_17
    new-instance v1, Lmiui/maml/data/DarkModeVariableUpdater;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v1, v2}, Lmiui/maml/data/DarkModeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v2, v1}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    return-void
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "scaleByDensity"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    :cond_16
    const-string v3, "defaultScreenWidth"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v3, :cond_29

    const-string v3, "screenWidth"

    invoke-static {v1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    :cond_29
    const-string v3, "defaultResourceDensity"

    invoke-static {v1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    if-nez v3, :cond_3b

    const-string v3, "resDensity"

    invoke-static {v1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    :cond_3b
    iget v3, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {v3}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v3

    iput v3, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    iget v5, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    const/16 v6, 0x1e0

    const/16 v7, 0xf0

    if-nez v5, :cond_52

    if-nez v3, :cond_52

    iput v6, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    iput v7, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto :goto_65

    :cond_52
    iget v3, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v3, :cond_5d

    iget v3, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/2addr v3, v7

    div-int/2addr v3, v6

    iput v3, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto :goto_65

    :cond_5d
    iget v5, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v5, :cond_65

    mul-int/2addr v3, v6

    div-int/2addr v3, v7

    iput v3, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    :cond_65
    :goto_65
    iget-object v3, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget v5, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v3, v5}, Lmiui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    iget-object v3, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v5, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_92

    const/4 v11, 0x3

    if-ne v9, v11, :cond_91

    goto :goto_92

    :cond_91
    move v10, v4

    :cond_92
    :goto_92
    if-eqz v10, :cond_97

    iget v11, v8, Landroid/graphics/Point;->y:I

    goto :goto_99

    :cond_97
    iget v11, v8, Landroid/graphics/Point;->x:I

    :goto_99
    iput v11, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    if-eqz v10, :cond_a0

    iget v11, v8, Landroid/graphics/Point;->x:I

    goto :goto_a2

    :cond_a0
    iget v11, v8, Landroid/graphics/Point;->y:I

    :goto_a2
    iput v11, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v5, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v12, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v12, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget-object v12, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v12, v12, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v13, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v13, v13, 0xf

    iget v14, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    if-nez v14, :cond_c9

    iget v15, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/2addr v15, v7

    div-int/lit16 v14, v15, 0x1e0

    :cond_c9
    new-instance v6, Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {v6, v1, v14}, Lmiui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    iget v7, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v15, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    invoke-virtual {v6, v7, v15, v13}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    move-result-object v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findResource: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "ScreenElementRoot"

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v7, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-static {v4}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v16, v2

    iget v2, v7, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v4, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v17, v3

    iget-object v3, v7, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    iget v3, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    invoke-virtual {v6, v3, v4, v13}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    const-string v2, "findScale: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v4, v0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    if-eqz v4, :cond_15f

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-static {v4}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    iput v4, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    cmpg-float v4, v4, v20

    if-gtz v4, :cond_14e

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v4, v4

    move/from16 v21, v2

    iget v2, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_186

    :cond_14e
    move/from16 v21, v2

    iget v2, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    mul-float/2addr v4, v2

    iput v4, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_188

    :cond_15f
    move/from16 v21, v2

    iget v2, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    iget v2, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    cmpl-float v2, v2, v20

    if-lez v2, :cond_186

    iget v2, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    mul-float/2addr v4, v2

    iput v4, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_188

    :cond_186
    :goto_186
    move/from16 v2, v21

    :goto_188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string v2, "set scale: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v2, v4}, Lmiui/maml/ResourceManager;->setTargetDensity(I)V

    const-string v2, "width"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    const-string v2, "height"

    invoke-static {v1, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    iget v2, v0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-float v2, v2

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    iget v2, v0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-float v2, v2

    iget v4, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return-void
.end method

.method private traverseElements()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lmiui/maml/ScreenElementRoot$2;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$2;-><init>(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method

.method public addAccessibleElements(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAccessibleList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/maml/elements/AnimatedScreenElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public addAnimationItem(Ljava/lang/String;Lmiui/maml/animation/BaseAnimation$AnimationItem;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPreTicker(Lmiui/maml/elements/ITicker;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowScreenRotation()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    return v0
.end method

.method public attachToVsync()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1f

    invoke-static {}, Lmiui/maml/RenderVsyncUpdater;->getInstance()Lmiui/maml/RenderVsyncUpdater;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    invoke-virtual {v2, v3}, Lmiui/maml/RenderVsyncUpdater;->addRendererController(Lmiui/maml/RendererController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-void

    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "VsyncUpdater or controller is null, MUST load before attaching"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public detachFromVsync()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1f

    invoke-static {}, Lmiui/maml/RenderVsyncUpdater;->getInstance()Lmiui/maml/RenderVsyncUpdater;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/RendererController;

    invoke-virtual {v2, v3}, Lmiui/maml/RenderVsyncUpdater;->removeRendererController(Lmiui/maml/RendererController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-void

    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "VsyncUpdater or controller is null, MUST load before detaching"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_9

    goto :goto_52

    :cond_9
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_13
    :try_start_13
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_2b

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenElementRoot"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    nop

    :goto_2c
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_35
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mIsDarkWallpaperMode:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    if-eqz v0, :cond_51

    const/high16 v0, 0x19000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_51
    return-void

    :cond_52
    :goto_52
    return-void
.end method

.method protected doTick(J)V
    .registers 13

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_a

    goto/16 :goto_82

    :cond_a
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->tick()V

    :cond_11
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/VariableUpdaterManager;->tick(J)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2d

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ITicker;

    invoke-interface {v2, p1, p2}, Lmiui/maml/elements/ITicker;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2d
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_42

    move v3, v5

    goto :goto_43

    :cond_42
    move v3, v4

    :goto_43
    iput-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v6, 0x0

    if-nez v3, :cond_5a

    new-instance v3, Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v9, "frame_rate"

    invoke-direct {v3, v9, v8, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    iput-wide v6, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    :cond_5a
    iget-wide v8, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_63

    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_81

    :cond_63
    sub-long v5, p1, v8

    const-wide/16 v7, 0x3e8

    cmp-long v3, v5, v7

    if-ltz v3, :cond_81

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v7, v3

    div-long/2addr v7, v5

    long-to-int v3, v7

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v7, v3}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput v4, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    :cond_81
    :goto_81
    return-void

    :cond_82
    :goto_82
    return-void
.end method

.method public doneRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .registers 3

    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->getElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public finish()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_64

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_9

    goto :goto_64

    :cond_9
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    const-string v0, "ScreenElementRoot"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string v2, "preFinish"

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    if-nez v1, :cond_37

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    :cond_37
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->finish()V

    :cond_3e
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    :cond_45
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->finish()V

    :cond_4c
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->release()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-static {}, Lmiui/maml/data/Expression$FunctionExpression;->resetFunctions()V

    return-void

    :cond_64
    :goto_64
    return-void
.end method

.method public getAccessibleElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    return-object v0
.end method

.method public getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCacheDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCapability(I)Z
    .registers 3

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    return-object v1

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getFontScale()F
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    return v0
.end method

.method public getHeight()F
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    return-object v0
.end method

.method public getMamlAccessHelper()Lmiui/maml/util/MamlAccessHelper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    return-object v0
.end method

.method public getMamlSurface()Lmiui/maml/component/MamlSurface;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/component/MamlSurface;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRendererController()Lmiui/maml/RendererController;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    return-object v0
.end method

.method public getResourceDensity()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getRootTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getScale()F
    .registers 3

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_11

    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_11
    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lmiui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;

    move-result-object v1

    :cond_10
    return-object v1
.end method

.method public getSystemFrameRate()F
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    return v2
.end method

.method public getTargetDensity()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getViewManager()Lmiui/maml/util/MamlViewManager;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/MamlViewManager;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()F
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .registers 2

    return-void
.end method

.method public init()V
    .registers 10

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v1, "__objRoot"

    invoke-virtual {v0, v1, p0}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    const-string v2, "__objContext"

    invoke-virtual {v0, v2, v1}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    const-string v1, "ScreenElementRoot"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->requestFramerate(F)V

    const/4 v3, -0x1

    iput v3, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    invoke-static {}, Lmiui/maml/util/SysProperties;->isShowDebugLayout()Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    iget-object v4, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v4}, Lmiui/maml/ResourceManager;->init()V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v4, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    float-to-double v4, v4

    const-string v6, "__fontScale"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget-object v4, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v4, v5, v6}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v4, v4

    const-string v6, "raw_screen_width"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v4, v4

    const-string v6, "raw_screen_height"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-string v6, "screen_width"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-string v6, "screen_height"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    const-string v5, "view_width"

    if-lez v4, :cond_9a

    int-to-double v6, v4

    invoke-virtual {v0, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_9a
    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    const-string v6, "view_height"

    if-lez v4, :cond_a4

    int-to-double v7, v4

    invoke-virtual {v0, v6, v7, v8}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_a4
    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v4, v4

    iget v7, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v7

    float-to-double v7, v4

    invoke-virtual {v0, v5, v7, v8}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v4, v4

    const-string v6, "__raw_density"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v4, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    float-to-double v4, v4

    const-string v6, "__scale_factor"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    const-string v6, "__maml_version"

    invoke-virtual {v0, v6, v4, v5}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const/4 v4, 0x0

    :try_start_d0
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    if-eqz v5, :cond_ef

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_ef

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_ef

    const-string v6, "com.android.thememanager"

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_ef

    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_ee} :catch_f0

    move v4, v1

    :cond_ef
    goto :goto_f6

    :catch_f0
    move-exception v3

    const-string v5, "thememanager not found"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f6
    int-to-double v5, v4

    const-string v1, "__thememanager_version"

    invoke-virtual {v0, v1, v5, v6}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "__miui_version_name"

    invoke-virtual {v0, v3, v1}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ro.miui.ui.version.code"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "__miui_version_code"

    invoke-virtual {v0, v3, v1}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "__android_version"

    invoke-virtual {v0, v3, v1}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "__system_version"

    invoke-virtual {v0, v3, v1}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->loadConfig()V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v1, :cond_12a

    invoke-virtual {v1}, Lmiui/maml/data/VariableUpdaterManager;->init()V

    :cond_12a
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v1, :cond_131

    invoke-virtual {v1}, Lmiui/maml/data/VariableBinderManager;->init()V

    :cond_131
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v1, :cond_138

    invoke-virtual {v1}, Lmiui/maml/CommandTriggers;->init()V

    :cond_138
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->init()V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string v2, "postInit"

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v2, v1}, Lmiui/maml/RendererController;->setNeedReset(Z)V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public isMamlBlurWindow()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mBlurWindow:Z

    return v0
.end method

.method public isSupportAccessibilityService()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    return v0
.end method

.method public isTransparentSurface()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mTransparentSurface:Z

    return v0
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    const-string v1, "ScreenElementRoot"

    const-string v2, " "

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_38

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issueExternCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_67

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issueExternCommand to MamlView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_96

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issueExternCommand to MamlSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return-void
.end method

.method public final load()Z
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v3}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_fc

    const-string v4, "ScreenElementRoot"

    if-nez v3, :cond_19

    :try_start_13
    const-string v5, "load error, manifest root is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_19
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    const-string v5, "VariableBinders"

    invoke-static {v3, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    new-instance v6, Lmiui/maml/data/VariableBinderManager;

    invoke-direct {v6, v5, p0}, Lmiui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    const-string v6, "ExternalCommands"

    invoke-static {v3, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_44

    new-instance v7, Lmiui/maml/CommandTriggers;

    invoke-direct {v7, v6, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v7, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    :cond_44
    const-string v7, "Styles"

    invoke-static {v3, v7}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    if-eqz v7, :cond_53

    new-instance v8, Lmiui/maml/StylesManager;

    invoke-direct {v8, v7}, Lmiui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v8, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    :cond_53
    const-string v8, "transparentSurface"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/maml/ScreenElementRoot;->mTransparentSurface:Z

    const-string v8, "frameRate"

    iget v9, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v8, v9}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v8

    iput v8, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    const-string v8, "customizedDarkModeWallpaper"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    const-string v8, "clearCanvas"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    const-string v8, "supportAccessibityService"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    const-string v8, "allowScreenRotation"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    const-string v8, "blurWindow"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/maml/ScreenElementRoot;->mBlurWindow:Z

    new-instance v8, Lmiui/maml/RendererController;

    invoke-direct {v8}, Lmiui/maml/RendererController;-><init>()V

    iput-object v8, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    new-instance v8, Lmiui/maml/ScreenElementRoot$InnerGroup;

    invoke-direct {v8, v3, p0}, Lmiui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v8, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v8}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_c3

    const-string v8, "load error, no element loaded"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c3
    const-string v8, "version"

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lmiui/maml/ScreenElementRoot;->mVersion:I

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v8

    if-nez v8, :cond_d8

    const-string v8, "load error, onLoad fail"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d8
    invoke-direct {p0}, Lmiui/maml/ScreenElementRoot;->traverseElements()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load finished, spent "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_fb} :catch_fc

    return v9

    :catch_fc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public loadConfig()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .registers 3

    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_f

    new-instance v0, Lmiui/maml/ScreenElementRoot$3;

    invoke-direct {v0, p0, p1}, Lmiui/maml/ScreenElementRoot$3;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->postRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    const-string v0, "orientationChange"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_f
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "ScreenElementRoot"

    const/4 v1, 0x0

    :try_start_3
    iget-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mTouchable:Z

    if-nez v2, :cond_10

    goto :goto_16

    :cond_10
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return v1

    :catch_17
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_23
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2f
    return v1
.end method

.method public onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    :cond_e
    if-eqz v0, :cond_13

    invoke-interface {v0, p2}, Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 12

    const-string v0, "ScreenElementRoot"

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c8

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v1, :cond_c8

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchable:Z

    if-nez v1, :cond_11

    goto/16 :goto_c8

    :cond_11
    :try_start_11
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v3, 0x1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    iget-object v4, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v5}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v1, v6

    add-float/2addr v5, v7

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v7

    div-float v6, v4, v6

    add-float/2addr v7, v6

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v8, v5, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v9, v7, v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v6, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eq v6, v3, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_61

    :cond_5e
    const/4 v6, 0x0

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    :cond_61
    return v3

    :cond_62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lmiui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v6, v1

    invoke-virtual {p0, v6, v7}, Lmiui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v6

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_8a

    if-eq v1, v3, :cond_87

    goto :goto_a1

    :cond_87
    iput-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_a1

    :cond_8a
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v1, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    nop

    :goto_a1
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_ae

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v3}, Lmiui/maml/RendererController;->requestUpdate()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_ae} :catch_bb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_ae} :catch_af

    :cond_ae
    return v1

    :catch_af
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :catch_bb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_c7
    return v2

    :cond_c8
    :goto_c8
    return v2
.end method

.method public onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public pause()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    const-string v0, "ScreenElementRoot"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->pause()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->pause()V

    :cond_25
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    :cond_2c
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->pause()V

    :cond_33
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->pause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    :cond_4d
    return-void
.end method

.method protected pauseAnim(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->pauseAnim(J)V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .registers 19

    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    move-object v0, p0

    iget-object v1, v0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    return-void
.end method

.method public playSound(Ljava/lang/String;)I
    .registers 5

    new-instance v0, Lmiui/maml/SoundManager$SoundOptions;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    return v0
.end method

.method public playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    return v0

    :cond_15
    return v1
.end method

.method public playSound(ILmiui/maml/SoundManager$Command;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(ILmiui/maml/SoundManager$Command;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenElementRoot"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    :cond_9
    return-void
.end method

.method protected putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeAccessibleElement(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    return-void
.end method

.method public removeAllAccessibleElements()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeElement(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removePreTicker(Lmiui/maml/elements/ITicker;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestFrameRateByCommand(F)V
    .registers 3

    iput p1, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->requestFramerate(F)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_d
    return-void
.end method

.method public requestUpdate()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->requestUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    return-void
.end method

.method public resume()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    const-string v0, "ScreenElementRoot"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/maml/util/SysProperties;->isShowDebugLayout()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->resume()V

    :cond_26
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    :cond_2d
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->resume()V

    :cond_34
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->resume()V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->setSyncInterval()V

    return-void
.end method

.method protected resumeAnim(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->resumeAnim(J)V

    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_c

    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-nez p2, :cond_14

    const-string v1, "null"

    invoke-virtual {v0, p1, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    :goto_1b
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_c

    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selfFinish()V
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    :cond_9
    return-void
.end method

.method public selfInit()V
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    :cond_9
    return-void
.end method

.method public selfPause()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public selfResume()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfResume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    return-void
.end method

.method public setBgColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-void
.end method

.method public setCapability(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    goto :goto_e

    :cond_8
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    :goto_e
    return-void
.end method

.method public setClearCanvas(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 9

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "orientation"

    invoke-static {v3, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const-string v3, "screen_height"

    const-string v4, "screen_width"

    const-string v5, "raw_screen_height"

    const-string v6, "raw_screen_width"

    if-eq v1, v2, :cond_4a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    goto :goto_6a

    :cond_29
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v1, v1

    invoke-virtual {v0, v6, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v1, v1

    invoke-virtual {v0, v5, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v4, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    goto :goto_6a

    :cond_4a
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v1, v1

    invoke-virtual {v0, v6, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v1, v1

    invoke-virtual {v0, v5, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v4, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public setDarkWallpaperMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mIsDarkWallpaperMode:Z

    return-void
.end method

.method public setDefaultFramerate(F)V
    .registers 2

    iput p1, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    return-void
.end method

.method public final setKeepResource(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    return-void
.end method

.method public setMamlAccessHelper(Lmiui/maml/util/MamlAccessHelper;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    return-void
.end method

.method public setMamlSurface(Lmiui/maml/component/MamlSurface;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setMamlSurfaceOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_9
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setMamlViewOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_9
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_9
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    :cond_9
    return-void
.end method

.method public setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_c

    new-instance v0, Lmiui/maml/SingleRootListener;

    invoke-direct {v0, p0, p1}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V

    :cond_c
    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    :cond_9
    return-void
.end method

.method public setScaleByDensity(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    return-void
.end method

.method public setSyncInterval()V
    .registers 4

    const/16 v0, 0x10

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getSystemFrameRate()F

    move-result v1

    float-to-int v1, v1

    if-eqz v1, :cond_d

    const/16 v2, 0x3e8

    div-int v0, v2, v1

    :cond_d
    const/4 v2, 0x1

    if-ge v0, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-static {}, Lmiui/maml/RenderVsyncUpdater;->getInstance()Lmiui/maml/RenderVsyncUpdater;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/maml/RenderVsyncUpdater;->setSyncInterval(I)V

    return-void
.end method

.method public setTouchable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mTouchable:Z

    return-void
.end method

.method public setViewManager(Lmiui/maml/util/MamlViewManager;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected shouldPlaySound()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    return-void
.end method

.method public showFramerate(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    return-void
.end method

.method public tick(J)V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    if-eqz v0, :cond_19

    new-instance v0, Lmiui/maml/ScreenElementRoot$1;

    invoke-direct {v0, p0, p1, p2}, Lmiui/maml/ScreenElementRoot$1;-><init>(Lmiui/maml/ScreenElementRoot;J)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    const-string v0, "init"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v1, v0}, Lmiui/maml/RendererController;->setNeedReset(Z)V

    :cond_19
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->doTick(J)V

    return-void
.end method

.method public update(J)J
    .registers 11

    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_2f

    iget-object v4, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/RendererController;

    invoke-virtual {v4}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v4}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_2c

    :cond_23
    invoke-virtual {v4, p1, p2}, Lmiui/maml/RendererController;->update(J)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gez v7, :cond_2c

    move-wide v0, v5

    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2f
    return-wide v0
.end method

.method public updateIfNeeded(J)J
    .registers 11

    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_2f

    iget-object v4, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/RendererController;

    invoke-virtual {v4}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v4}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_2c

    :cond_23
    invoke-virtual {v4, p1, p2}, Lmiui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gez v7, :cond_2c

    move-wide v0, v5

    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2f
    return-wide v0
.end method

.method public final version()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mVersion:I

    return v0
.end method
