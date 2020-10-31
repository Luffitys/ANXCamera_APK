.class public Lmiui/contentcatcher/sdk/WebViewDetector;
.super Ljava/lang/Object;
.source "WebViewDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/WebViewDetector$Callback;
    }
.end annotation


# static fields
.field public static final DETECTOR_NAME_IN_JS:Ljava/lang/String; = "MiWebViewDetector"

.field public static final TAG:Ljava/lang/String; = "WebViewDetector"

.field private static volatile sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;


# instance fields
.field private mCallback:Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

.field private mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/contentcatcher/sdk/WebViewDetector$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/contentcatcher/sdk/WebViewDetector;
    .registers 2

    sget-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    if-nez v0, :cond_17

    const-class v0, Lmiui/contentcatcher/sdk/WebViewDetector;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/contentcatcher/sdk/WebViewDetector;

    invoke-direct {v1}, Lmiui/contentcatcher/sdk/WebViewDetector;-><init>()V

    sput-object v1, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

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
    sget-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    return-object v0
.end method


# virtual methods
.method public onCatch(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/contentcatcher/sdk/WebViewDetector;->mCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lmiui/contentcatcher/sdk/WebViewDetector$Callback;->onWebContentCatched(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public setActiveCallback(Lmiui/contentcatcher/sdk/WebViewDetector$Callback;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/WebViewDetector;->mCallbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setCustomDetector(Lmiui/contentcatcher/sdk/WebViewDetector;)V
    .registers 4

    const-class v0, Lmiui/contentcatcher/sdk/WebViewDetector;

    monitor-enter v0

    :try_start_3
    sput-object p1, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
