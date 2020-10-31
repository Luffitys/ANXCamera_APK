.class public abstract Landroid/webkit/TracingController;
.super Ljava/lang/Object;
.source "TracingController.java"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/TracingController;
    .registers 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getTracingController()Landroid/webkit/TracingController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract isTracing()Z
.end method

.method public abstract start(Landroid/webkit/TracingConfig;)V
.end method

.method public abstract stop(Ljava/io/OutputStream;Ljava/util/concurrent/Executor;)Z
.end method
