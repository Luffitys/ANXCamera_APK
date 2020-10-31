.class public Landroid/view/ForceDarkHelper;
.super Ljava/lang/Object;
.source "ForceDarkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ForceDarkHelper$ViewRootImpl;,
        Landroid/view/ForceDarkHelper$AssetManager;,
        Landroid/view/ForceDarkHelper$AppDarkModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final FORCE_DARK_ACTIVITY_EXCLUDE_LIST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static volatile sInstance:Landroid/view/ForceDarkHelper;


# instance fields
.field private mAppDarkModeObserverRegisted:Z

.field private mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

.field private mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

.field private mContext:Landroid/content/Context;

.field private mForceDarkExcludedView:Z

.field private mHardwareAccelerationExcluded:Z

.field private mIsAppDarkModeEnable:Z

.field private mIsDarkModeEnabled:Z

.field private mIsDarkModeSupported:Z

.field private mIsInputMethod:Z

.field private mLabToRgb:Landroid/graphics/ColorSpace$Connector;

.field private mRgbToLab:Landroid/graphics/ColorSpace$Connector;

.field private mTencentWebViewMethod:Ljava/lang/reflect/Method;

.field private mUCWebViewMethod:Ljava/lang/reflect/Method;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "ForceDarkHelper"

    sput-object v0, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ForceDarkHelper;->FORCE_DARK_ACTIVITY_EXCLUDE_LIST:Ljava/util/HashMap;

    const-string v1, "com.wudaokou.hippo"

    const-string v2, "com.wudaokou.hippo.pay.ReversalPayActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/view/ForceDarkHelper;->FORCE_DARK_ACTIVITY_EXCLUDE_LIST:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.plugin.offline.ui.WalletOfflineCoinPurseUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/view/ForceDarkHelper;->FORCE_DARK_ACTIVITY_EXCLUDE_LIST:Ljava/util/HashMap;

    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.alipay.mobile.onsitepay9.payer.OspTabHostActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/ForceDarkHelper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/view/ForceDarkHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    return p1
.end method

.method private getDarkModeAppSetting(Ljava/lang/String;)Z
    .registers 7

    const-string/jumbo v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    :try_start_a
    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lmiui/security/ISecurityManager;->getAppDarkModeForUser(Ljava/lang/String;I)Z

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    move v1, v3

    goto :goto_1e

    :catch_15
    move-exception v2

    sget-object v3, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start window getDarkModeAppSetting error: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static getInstance()Landroid/view/ForceDarkHelper;
    .registers 2

    sget-object v0, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    if-nez v0, :cond_17

    const-class v0, Landroid/view/ForceDarkHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    if-nez v1, :cond_12

    new-instance v1, Landroid/view/ForceDarkHelper;

    invoke-direct {v1}, Landroid/view/ForceDarkHelper;-><init>()V

    sput-object v1, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    return-object v0
.end method

.method private loadWebViewNightModeMethod(Landroid/content/Context;)V
    .registers 8

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a5

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    goto/16 :goto_a5

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2f720f5d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2e

    const v3, 0x1022769d

    if-eq v2, v3, :cond_24

    :cond_23
    goto :goto_37

    :cond_24
    const-string v2, "com.UCMobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v1, v5

    goto :goto_37

    :cond_2e
    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v1, v4

    :goto_37
    if-eqz v1, :cond_5b

    if-eq v1, v5, :cond_3c

    goto :goto_88

    :cond_3c
    const-string v0, "com.uc.webview.export.extension.UCSettings"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setGlobalBoolValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    goto :goto_88

    :cond_5b
    const-string v0, "com.baidu.browser.sailor.BdSailorWebView"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSettingsExt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    const-string v0, "com.baidu.browser.sailor.ISailorWebSettingsExt"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setNightModeEnabledExt"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_87} :catch_89

    nop

    :goto_88
    goto :goto_a4

    :catch_89
    move-exception v0

    sget-object v1, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadWebViewNightModeMethod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a4
    return-void

    :cond_a5
    :goto_a5
    return-void
.end method


# virtual methods
.method public changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    :cond_c
    return-void
.end method

.method public changePaintWhenDrawPatch(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelper;->makeDark(Landroid/graphics/Paint;)Z

    :cond_12
    return-void
.end method

.method public changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelper;->makeDark(Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/MiuiCanvas;->setHasForceDark(Z)V

    :cond_19
    return-void
.end method

.method public changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->hasForceDark()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelper;->makeLight(Landroid/graphics/Paint;)Z

    :cond_12
    return-void
.end method

.method public enableHardwareAccelerationIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    if-nez v0, :cond_53

    iget-boolean v3, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    if-eqz v3, :cond_53

    const-string v3, "debug.hwui.force_dark"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-boolean v3, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeSupported:Z

    if-nez v3, :cond_53

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_53

    sget-object v2, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " force enable hardware acceleration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_53
    iget-boolean v1, p0, Landroid/view/ForceDarkHelper;->mHardwareAccelerationExcluded:Z

    if-eqz v1, :cond_5a

    iput-boolean v2, p0, Landroid/view/ForceDarkHelper;->mHardwareAccelerationExcluded:Z

    return v2

    :cond_5a
    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-object p1, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-ne v2, v5, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v4

    :goto_1b
    iput-boolean v2, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.xiaomi.vipaccount"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "com.xiaomi.market"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "com.xiaomi.gamecenter"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "com.miui."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "com.google.android.apps.docs.editors.sheets"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-direct {p0, v2}, Landroid/view/ForceDarkHelper;->getDarkModeAppSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    goto :goto_52

    :cond_50
    move v5, v4

    goto :goto_53

    :cond_52
    :goto_52
    move v5, v3

    :goto_53
    iput-boolean v5, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    const-string v5, "baidu.input"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    const-string v5, ".inputmethod"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    const-string v5, "com.tencent.qqpinyin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6e

    goto :goto_70

    :cond_6e
    move v3, v4

    goto :goto_71

    :cond_70
    :goto_70
    nop

    :goto_71
    iput-boolean v3, p0, Landroid/view/ForceDarkHelper;->mIsInputMethod:Z

    if-nez v3, :cond_8a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ForceDarkHelper$AssetManager;

    if-eqz v4, :cond_8a

    move-object v4, v3

    check-cast v4, Landroid/view/ForceDarkHelper$AssetManager;

    invoke-interface {v4}, Landroid/view/ForceDarkHelper$AssetManager;->isDarkModeSupported()Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeSupported:Z

    :cond_8a
    invoke-direct {p0, p1}, Landroid/view/ForceDarkHelper;->loadWebViewNightModeMethod(Landroid/content/Context;)V

    return-void
.end method

.method injectViewWhenUpdateDisplayListIfDirty(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p2, Landroid/view/ForceDarkHelper$ViewRootImpl;

    if-eqz v1, :cond_8

    move-object v0, p2

    check-cast v0, Landroid/view/ForceDarkHelper$ViewRootImpl;

    :cond_8
    if-eqz p1, :cond_3f

    if-nez v0, :cond_d

    goto :goto_3f

    :cond_d
    invoke-interface {v0}, Landroid/view/ForceDarkHelper$ViewRootImpl;->getUseForceDark()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v2

    if-eqz v2, :cond_3e

    if-nez v1, :cond_1a

    goto :goto_3e

    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3d

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-nez v3, :cond_3d

    iget-object v3, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_3d
    return-void

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    :goto_3f
    return-void
.end method

.method public makeDark(Landroid/graphics/Paint;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v4

    invoke-static {v1, v2}, Landroid/graphics/Color;->green(J)F

    move-result v5

    invoke-static {v1, v2}, Landroid/graphics/Color;->blue(J)F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v3

    const/high16 v4, 0x42dc0000    # 110.0f

    aget v5, v3, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aget v5, v3, v0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_47

    aput v4, v3, v0

    iget-object v5, p0, Landroid/view/ForceDarkHelper;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v5

    aget v0, v5, v0

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    invoke-static {v1, v2}, Landroid/graphics/Color;->alpha(J)F

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->pack(FFFF)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Paint;->setColor(J)V

    return v6

    :cond_47
    return v0
.end method

.method public makeLight(Landroid/graphics/Paint;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v4

    invoke-static {v1, v2}, Landroid/graphics/Color;->green(J)F

    move-result v5

    invoke-static {v1, v2}, Landroid/graphics/Color;->blue(J)F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v3

    const/high16 v4, 0x42dc0000    # 110.0f

    aget v5, v3, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aget v5, v3, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_47

    aput v4, v3, v0

    iget-object v5, p0, Landroid/view/ForceDarkHelper;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v5

    aget v0, v5, v0

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    invoke-static {v1, v2}, Landroid/graphics/Color;->alpha(J)F

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->pack(FFFF)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Paint;->setColor(J)V

    return v6

    :cond_47
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    return-void
.end method

.method public registAppDarkModeObserver(Landroid/content/Context;)V
    .registers 8

    iget-boolean v0, p0, Landroid/view/ForceDarkHelper;->mAppDarkModeObserverRegisted:Z

    if-nez v0, :cond_8f

    if-nez p1, :cond_8

    goto/16 :goto_8f

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-nez v0, :cond_17

    goto :goto_59

    :cond_17
    new-instance v0, Landroid/os/MiuiBinderProxy;

    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.app.IUiModeManager"

    invoke-direct {v0, v1, v2}, Landroid/os/MiuiBinderProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    const v1, 0xfffffd

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ForceDarkHelper$AppDarkModeObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/view/ForceDarkHelper$AppDarkModeObserver;-><init>(Landroid/view/ForceDarkHelper;Landroid/view/ForceDarkHelper$1;)V

    invoke-virtual {v4}, Landroid/view/ForceDarkHelper$AppDarkModeObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/MiuiBinderProxy;->callOneWayTransact(I[Ljava/lang/Object;)I

    iput-boolean v4, p0, Landroid/view/ForceDarkHelper;->mAppDarkModeObserverRegisted:Z

    return-void

    :cond_59
    :goto_59
    sget-object v0, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registAppDarkModeObserver, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8f
    :goto_8f
    return-void
.end method

.method public updateByCheckExcludeList(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_52

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_52

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/view/ForceDarkHelper;->FORCE_DARK_ACTIVITY_EXCLUDE_LIST:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iput-boolean v4, p0, Landroid/view/ForceDarkHelper;->mForceDarkExcludedView:Z

    goto :goto_51

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/view/ForceDarkHelper;->FORCE_DARK_ACTIVITY_EXCLUDE_LIST:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iput-boolean v4, p0, Landroid/view/ForceDarkHelper;->mForceDarkExcludedView:Z

    :cond_51
    :goto_51
    goto :goto_54

    :cond_52
    iput-boolean v0, p0, Landroid/view/ForceDarkHelper;->mForceDarkExcludedView:Z

    :goto_54
    return-void
.end method

.method public updateForceDarkForCanvas(Ljava/lang/Object;ZLandroid/graphics/BaseCanvas;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/ForceDarkHelper$ViewRootImpl;

    if-eqz v2, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/view/ForceDarkHelper$ViewRootImpl;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewRootImpl;

    :cond_c
    if-nez v0, :cond_f

    return-void

    :cond_f
    move-object v2, p3

    check-cast v2, Landroid/graphics/MiuiCanvas;

    if-eqz v1, :cond_20

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string v4, "com.xiaomi.gamecenter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    goto :goto_24

    :cond_20
    invoke-interface {v0}, Landroid/view/ForceDarkHelper$ViewRootImpl;->getUseForceDark()Z

    move-result v3

    :goto_24
    if-eqz v3, :cond_2a

    if-eqz p2, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    invoke-virtual {v2, v4}, Landroid/graphics/MiuiCanvas;->setForceDarkAllowed(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/MiuiCanvas;->setForceDark(Z)V

    return-void
.end method

.method updateForceDarkForRenderNode(Landroid/graphics/RenderNode;Landroid/graphics/BaseCanvas;)V
    .registers 6

    move-object v0, p2

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->hasForceDark()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_12
    return-void
.end method

.method public updateForceDarkForView(Landroid/view/View;)V
    .registers 7

    iget v0, p1, Landroid/view/View;->mID:I

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4f

    :try_start_8
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p1, Landroid/view/View;->mID:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    const-string v3, "bg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "background"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_40

    :cond_2a
    const-string v3, "btn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "button"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_3a
    iget-object v3, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v1}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_45

    :cond_40
    :goto_40
    iget-object v3, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v2}, Landroid/graphics/RenderNode;->setUsageHint(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    goto :goto_4f

    :catch_46
    move-exception v0

    sget-object v3, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateForceDarkForView fail to get view name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Blur"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_85

    :cond_65
    instance-of v3, p1, Landroid/widget/TextView;

    if-nez v3, :cond_80

    const-string v3, "Button"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    goto :goto_80

    :cond_72
    const-string v1, "LottieAnimationView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_85

    :cond_80
    :goto_80
    iget-object v2, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    :cond_85
    :goto_85
    iget-boolean v1, p0, Landroid/view/ForceDarkHelper;->mForceDarkExcludedView:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8f

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_8f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sina.weibo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const-string v1, "SplitDraggableImageView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_ac
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.netease.cloudmusic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    const-string v1, "PlayerDiscViewFlipper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c9

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_c9
    return-void
.end method

.method updateForceDarkMode(Ljava/lang/Object;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl;

    move-object v1, p1

    check-cast v1, Landroid/view/ForceDarkHelper$ViewRootImpl;

    :cond_c
    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_2a

    :cond_28
    move v3, v4

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v3, v5

    :goto_2b
    const/16 v6, 0x20

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-ne v7, v6, :cond_3e

    goto :goto_40

    :cond_3e
    move v7, v4

    goto :goto_41

    :cond_40
    :goto_40
    move v7, v5

    :goto_41
    if-eqz v7, :cond_4d

    iget-boolean v8, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    if-eqz v8, :cond_4d

    iget-boolean v8, p0, Landroid/view/ForceDarkHelper;->mIsInputMethod:Z

    if-nez v8, :cond_4d

    move v8, v5

    goto :goto_4e

    :cond_4d
    move v8, v4

    :goto_4e
    move v7, v8

    if-eqz v7, :cond_b2

    const/4 v7, 0x0

    iget-boolean v8, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    if-nez v8, :cond_64

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-ne v8, v6, :cond_b2

    :cond_64
    nop

    const-string v8, "debug.hwui.force_dark"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sget-object v9, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v10, 0x117

    invoke-virtual {v9, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_7e

    if-nez v3, :cond_7c

    goto :goto_7e

    :cond_7c
    move v10, v4

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v10, v5

    :goto_7f
    move v7, v10

    if-eqz v7, :cond_9f

    const/16 v10, 0x116

    if-eqz v8, :cond_9a

    iget-boolean v11, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeSupported:Z

    if-eqz v11, :cond_98

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v11, v11, 0x30

    if-eq v11, v6, :cond_9a

    :cond_98
    move v6, v5

    goto :goto_9b

    :cond_9a
    move v6, v4

    :goto_9b
    invoke-virtual {v9, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    :cond_9f
    if-nez v7, :cond_ad

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "com.wuba"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    :cond_ad
    move v4, v5

    :cond_ae
    move v7, v4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b2
    invoke-interface {v1, v7}, Landroid/view/ForceDarkHelper$ViewRootImpl;->setUseForceDark(Z)V

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_c2

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v4, v7}, Landroid/view/ThreadedRenderer;->setForceDark(Z)Z

    :cond_c2
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_cb

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    :cond_cb
    return-void
.end method

.method public updateHardwareAccelerationDeniedList(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl;

    :cond_8
    if-eqz v0, :cond_25

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string v2, "com.sankuai.meituan"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PayActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ForceDarkHelper;->mHardwareAccelerationExcluded:Z

    :cond_25
    return-void
.end method

.method public updateWebView(Landroid/view/View;Ljava/lang/Object;)V
    .registers 13

    const/4 v0, 0x0

    instance-of v1, p2, Landroid/view/ForceDarkHelper$ViewRootImpl;

    if-eqz v1, :cond_8

    move-object v0, p2

    check-cast v0, Landroid/view/ForceDarkHelper$ViewRootImpl;

    :cond_8
    iget-object v1, p0, Landroid/view/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7b

    :cond_14
    if-eqz p1, :cond_7b

    if-nez v0, :cond_19

    goto :goto_7b

    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_70

    const-string v4, "com.uc.webview.browser.BrowserWebView"

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "com.uc.webview.export.WebView"

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "com.baidu.browser.sailor.BdSailorWebView"

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    :cond_4b
    iput-object p1, p0, Landroid/view/ForceDarkHelper;->mView:Landroid/view/View;

    invoke-interface {v0}, Landroid/view/ForceDarkHelper$ViewRootImpl;->getUseForceDark()Z

    move-result v4

    nop

    iget-object v5, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_70

    iget-object v5, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_70

    iget-object v5, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_70} :catch_71

    :cond_70
    goto :goto_7a

    :catch_71
    move-exception v3

    sget-object v4, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setWebViewNightMode "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7a
    return-void

    :cond_7b
    :goto_7b
    return-void
.end method
