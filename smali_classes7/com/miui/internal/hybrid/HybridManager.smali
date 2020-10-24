.class public Lcom/miui/internal/hybrid/HybridManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "hybrid"

.field private static sPool:Ljava/util/concurrent/ExecutorService;

.field private static sUserAgent:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDetached:Z

.field private mFM:Lcom/miui/internal/hybrid/FeatureManager;

.field private mListeners:Ljava/util/Set;

.field private mNativeInterface:Lmiui/hybrid/NativeInterface;

.field private mPM:Lcom/miui/internal/hybrid/PermissionManager;

.field private mPageContext:Lmiui/hybrid/PageContext;

.field private mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private mView:Lmiui/hybrid/HybridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/internal/hybrid/HybridManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/HybridManager;->buildCallbackJavascript(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method private buildCallbackJavascript(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\"

    const-string v0, "\\\\"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'"

    const-string v0, "\\\'"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mPM:Lcom/miui/internal/hybrid/PermissionManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {v1}, Lmiui/hybrid/PageContext;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/PermissionManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mFM:Lcom/miui/internal/hybrid/FeatureManager;

    invoke-virtual {p0, p1}, Lcom/miui/internal/hybrid/FeatureManager;->lookupFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v0, 0xcb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature not permitted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;
    .locals 0

    new-instance p1, Lmiui/hybrid/Request;

    invoke-direct {p1}, Lmiui/hybrid/Request;-><init>()V

    invoke-virtual {p1, p2}, Lmiui/hybrid/Request;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lmiui/hybrid/Request;->setRawParams(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {p1, p2}, Lmiui/hybrid/Request;->setPageContext(Lmiui/hybrid/PageContext;)V

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {p1, p2}, Lmiui/hybrid/Request;->setView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mNativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {p1, p0}, Lmiui/hybrid/Request;->setNativeInterface(Lmiui/hybrid/NativeInterface;)V

    return-object p1
.end method

.method private config(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    new-instance p2, Lcom/miui/internal/hybrid/SecurityManager;

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/miui/internal/hybrid/SecurityManager;-><init>(Lcom/miui/internal/hybrid/Config;Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/miui/internal/hybrid/SecurityManager;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/internal/hybrid/SecurityManager;->isValidSignature()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    new-instance p0, Lmiui/hybrid/Response;

    const/16 p1, 0xca

    invoke-direct {p0, p1}, Lmiui/hybrid/Response;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p2, Lcom/miui/internal/hybrid/FeatureManager;

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/miui/internal/hybrid/FeatureManager;-><init>(Lcom/miui/internal/hybrid/Config;Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mFM:Lcom/miui/internal/hybrid/FeatureManager;

    new-instance p2, Lcom/miui/internal/hybrid/PermissionManager;

    invoke-direct {p2, p1}, Lcom/miui/internal/hybrid/PermissionManager;-><init>(Lcom/miui/internal/hybrid/Config;)V

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mPM:Lcom/miui/internal/hybrid/PermissionManager;

    new-instance p0, Lmiui/hybrid/Response;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_0
.end method

.method private getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " XiaoMi/HybridView/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    const-string v1, "com.miui.core"

    invoke-static {p1, v1}, Lcom/miui/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/miui/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method private initSettings(Lmiui/hybrid/HybridSettings;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Lmiui/hybrid/HybridSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/hybrid/HybridSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->initSettings(Lmiui/hybrid/HybridSettings;)V

    new-instance v0, Lmiui/hybrid/HybridViewClient;

    invoke-direct {v0}, Lmiui/hybrid/HybridViewClient;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->setHybridViewClient(Lmiui/hybrid/HybridViewClient;)V

    new-instance v0, Lmiui/hybrid/HybridChromeClient;

    invoke-direct {v0}, Lmiui/hybrid/HybridChromeClient;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V

    new-instance v0, Lcom/miui/internal/hybrid/JsInterface;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/JsInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    const-string v2, "MiuiJsBridge"

    invoke-virtual {v1, v0, v2}, Lmiui/hybrid/HybridView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    new-instance v1, Lcom/miui/internal/hybrid/HybridManager$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/hybrid/HybridManager$1;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private loadConfig(I)Lcom/miui/internal/hybrid/Config;
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/miui/internal/hybrid/XmlConfigParser;->create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p0
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot load config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resolveUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "^[a-z-]+://"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file:///android_asset/hybrid/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {p2, v0}, Lmiui/hybrid/PageContext;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x3

    const-string v0, "hybrid"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-blocking response is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;

    invoke-direct {v0, p0, p1, p3}, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public config(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/internal/hybrid/ConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/hybrid/HybridManager;->config(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0xc9

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getHybridView()Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method public init(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lmiui/hybrid/NativeInterface;

    invoke-direct {v0, p0}, Lmiui/hybrid/NativeInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mNativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->loadConfig(I)Lcom/miui/internal/hybrid/Config;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/hybrid/HybridManager;->config(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/hybrid/HybridManager;->initView()V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->resolveUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {p0, p2}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v2

    sget-object v3, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, v3, :cond_0

    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/hybrid/HybridManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, p2, :cond_1

    sget-object p2, Lcom/miui/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {p3, p0, v0, p1, p4}, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Lmiui/hybrid/Response;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p2, Lmiui/hybrid/Callback;

    iget-object p3, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-direct {p2, p0, p3, p4}, Lmiui/hybrid/Callback;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lmiui/hybrid/Request;->setCallback(Lmiui/hybrid/Callback;)V

    sget-object p2, Lcom/miui/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {p3, p0, v0, p1, p4}, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Lmiui/hybrid/Response;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/HybridException;->getResponse()Lmiui/hybrid/Response;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDetached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z

    return p0
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;

    move-result-object p0

    invoke-interface {v0, p0}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lmiui/hybrid/Response;

    const/16 p1, 0xcd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lmiui/hybrid/Response;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridException;->getResponse()Lmiui/hybrid/Response;

    move-result-object p0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/LifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageChange()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onPageChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0}, Lmiui/hybrid/LifecycleListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPageContext(Lmiui/hybrid/PageContext;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    return-void
.end method
