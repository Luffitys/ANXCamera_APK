.class public Lcom/miui/internal/hybrid/HybridManager;
.super Ljava/lang/Object;
.source "HybridManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/HybridManager$JsInvocation;,
        Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "hybrid"

.field private static sPool:Ljava/util/concurrent/ExecutorService;

.field private static sUserAgent:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDetached:Z

.field private mFM:Lcom/miui/internal/hybrid/FeatureManager;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/hybrid/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeInterface:Lmiui/hybrid/NativeInterface;

.field private mPM:Lcom/miui/internal/hybrid/PermissionManager;

.field private mPageContext:Lmiui/hybrid/PageContext;

.field private mReqMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmiui/hybrid/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lmiui/hybrid/HybridView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V
    .registers 4

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
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/HybridManager;->buildCallbackJavascript(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method private buildCallbackJavascript(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\\\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mPM:Lcom/miui/internal/hybrid/PermissionManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {v1}, Lmiui/hybrid/PageContext;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/PermissionManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mFM:Lcom/miui/internal/hybrid/FeatureManager;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/FeatureManager;->lookupFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v1, 0xcb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feature not permitted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;
    .registers 6

    new-instance v0, Lmiui/hybrid/Request;

    invoke-direct {v0}, Lmiui/hybrid/Request;-><init>()V

    invoke-virtual {v0, p2}, Lmiui/hybrid/Request;->setAction(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lmiui/hybrid/Request;->setRawParams(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {v0, v1}, Lmiui/hybrid/Request;->setPageContext(Lmiui/hybrid/PageContext;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v0, v1}, Lmiui/hybrid/Request;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mNativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-virtual {v0, v1}, Lmiui/hybrid/Request;->setNativeInterface(Lmiui/hybrid/NativeInterface;)V

    return-object v0
.end method

.method private config(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;
    .registers 6

    if-eqz p2, :cond_25

    new-instance v0, Lcom/miui/internal/hybrid/SecurityManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/hybrid/SecurityManager;-><init>(Lcom/miui/internal/hybrid/Config;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/SecurityManager;->isExpired()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/SecurityManager;->isValidSignature()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_19
    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xca

    invoke-direct {v1, v2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_25
    new-instance v0, Lcom/miui/internal/hybrid/FeatureManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/hybrid/FeatureManager;-><init>(Lcom/miui/internal/hybrid/Config;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mFM:Lcom/miui/internal/hybrid/FeatureManager;

    new-instance v0, Lcom/miui/internal/hybrid/PermissionManager;

    invoke-direct {v0, p1}, Lcom/miui/internal/hybrid/PermissionManager;-><init>(Lcom/miui/internal/hybrid/Config;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mPM:Lcom/miui/internal/hybrid/PermissionManager;

    new-instance v0, Lmiui/hybrid/Response;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    :try_start_7
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_d

    move-object v0, v2

    goto :goto_11

    :catch_d
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_11
    return-object v0
.end method

.method private getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/miui/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " XiaoMi/HybridView/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    const-string v2, "com.miui.core"

    invoke-static {v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    :cond_43
    sget-object v0, Lcom/miui/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private initSettings(Lmiui/hybrid/HybridSettings;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Lmiui/hybrid/HybridSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->initSettings(Lmiui/hybrid/HybridSettings;)V

    new-instance v1, Lmiui/hybrid/HybridViewClient;

    invoke-direct {v1}, Lmiui/hybrid/HybridViewClient;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v2, v1}, Lmiui/hybrid/HybridView;->setHybridViewClient(Lmiui/hybrid/HybridViewClient;)V

    new-instance v2, Lmiui/hybrid/HybridChromeClient;

    invoke-direct {v2}, Lmiui/hybrid/HybridChromeClient;-><init>()V

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v3, v2}, Lmiui/hybrid/HybridView;->setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V

    new-instance v3, Lcom/miui/internal/hybrid/JsInterface;

    invoke-direct {v3, p0}, Lcom/miui/internal/hybrid/JsInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    const-string v5, "MiuiJsBridge"

    invoke-virtual {v4, v3, v5}, Lmiui/hybrid/HybridView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    new-instance v5, Lcom/miui/internal/hybrid/HybridManager$1;

    invoke-direct {v5, p0}, Lcom/miui/internal/hybrid/HybridManager$1;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    invoke-virtual {v4, v5}, Lmiui/hybrid/HybridView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private loadConfig(I)Lcom/miui/internal/hybrid/Config;
    .registers 6

    if-nez p1, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object v0

    :goto_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/XmlConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v1
    :try_end_14
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_2 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resolveUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "^[a-z-]+://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_11

    return-object p1

    :cond_11
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/hybrid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_47

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {p2, v0}, Lmiui/hybrid/PageContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x3

    const-string v1, "hybrid"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-blocking response is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;

    invoke-direct {v1, p0, p1, p3}, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_47
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public config(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/internal/hybrid/ConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->config(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v0

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHybridView()Lmiui/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method public init(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Lmiui/hybrid/NativeInterface;

    invoke-direct {v0, p0}, Lmiui/hybrid/NativeInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mNativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->loadConfig(I)Lcom/miui/internal/hybrid/Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/HybridManager;->config(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/hybrid/HybridManager;->initView()V

    if-nez p2, :cond_26

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/internal/hybrid/HybridManager;->resolveUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_26
    if-eqz p2, :cond_2d

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mView:Lmiui/hybrid/HybridView;

    invoke-virtual {v1, p2}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0
    :try_end_4
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_4} :catch_66

    nop

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v2

    sget-object v3, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, v3, :cond_25

    new-instance v3, Lmiui/hybrid/Response;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lmiui/hybrid/Response;-><init>(I)V

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, v3, v4, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/hybrid/HybridManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, v4, :cond_47

    sget-object v4, Lcom/miui/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {v5, p0, v0, v3, p4}, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v4, Lmiui/hybrid/Response;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v4}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_47
    new-instance v4, Lmiui/hybrid/Callback;

    iget-object v5, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-direct {v4, p0, v5, p4}, Lmiui/hybrid/Callback;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lmiui/hybrid/Request;->setCallback(Lmiui/hybrid/Callback;)V

    sget-object v5, Lcom/miui/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {v6, p0, v0, v3, p4}, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v5, Lmiui/hybrid/Response;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v5}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridException;->getResponse()Lmiui/hybrid/Response;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, v1, v2, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isDetached()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z

    return v0
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0
    :try_end_4
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_4} :catch_38

    nop

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v2

    if-nez v2, :cond_2d

    new-instance v2, Lmiui/hybrid/Response;

    const/16 v3, 0xcd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2d
    new-instance v2, Lmiui/hybrid/Response;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v2}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridException;->getResponse()Lmiui/hybrid/Response;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v1, p1, p2, p3}, Lmiui/hybrid/LifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onDestroy()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onPageChange()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onPageChange()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onPause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onResume()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onStart()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onStop()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPageContext(Lmiui/hybrid/PageContext;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mPageContext:Lmiui/hybrid/PageContext;

    return-void
.end method
