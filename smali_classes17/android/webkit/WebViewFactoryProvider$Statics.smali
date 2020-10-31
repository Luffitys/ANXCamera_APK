.class public interface abstract Landroid/webkit/WebViewFactoryProvider$Statics;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Statics"
.end annotation


# virtual methods
.method public abstract clearClientCertPreferences(Ljava/lang/Runnable;)V
.end method

.method public abstract enableSlowWholeDocumentDraw()V
.end method

.method public abstract findAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract freeMemoryForTests()V
.end method

.method public abstract getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
.end method

.method public abstract initSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract parseFileChooserResult(ILandroid/content/Intent;)[Landroid/net/Uri;
.end method

.method public abstract setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setWebContentsDebuggingEnabled(Z)V
.end method
