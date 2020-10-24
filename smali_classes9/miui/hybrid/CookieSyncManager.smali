.class public final Lmiui/hybrid/CookieSyncManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sRef:Lmiui/hybrid/CookieSyncManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/hybrid/CookieSyncManager;
    .locals 1

    invoke-static {}, Lmiui/hybrid/CookieSyncManager;->getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;->createInstance(Landroid/content/Context;)V

    invoke-static {}, Lmiui/hybrid/CookieSyncManager;->getInstance()Lmiui/hybrid/CookieSyncManager;

    move-result-object p0

    return-object p0
.end method

.method private static getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;
    .locals 1

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/WebViewFactoryProvider;->getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmiui/hybrid/CookieSyncManager;
    .locals 1

    invoke-static {}, Lmiui/hybrid/CookieSyncManager;->getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;->getInstance()V

    sget-object v0, Lmiui/hybrid/CookieSyncManager;->sRef:Lmiui/hybrid/CookieSyncManager;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/hybrid/CookieSyncManager;

    invoke-direct {v0}, Lmiui/hybrid/CookieSyncManager;-><init>()V

    sput-object v0, Lmiui/hybrid/CookieSyncManager;->sRef:Lmiui/hybrid/CookieSyncManager;

    :cond_0
    sget-object v0, Lmiui/hybrid/CookieSyncManager;->sRef:Lmiui/hybrid/CookieSyncManager;

    return-object v0
.end method

.method public static sync()V
    .locals 1

    invoke-static {}, Lmiui/hybrid/CookieSyncManager;->getCookieSyncManager()Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/provider/AbsCookieSyncManager;->sync()V

    return-void
.end method
