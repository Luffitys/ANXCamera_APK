.class public interface abstract Landroid/webkit/PacProcessor;
.super Ljava/lang/Object;
.source "PacProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public static getInstance()Landroid/webkit/PacProcessor;
    .registers 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getPacProcessor()Landroid/webkit/PacProcessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract findProxyForUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setProxyScript(Ljava/lang/String;)Z
.end method
