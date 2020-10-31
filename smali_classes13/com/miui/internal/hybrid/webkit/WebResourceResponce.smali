.class public Lcom/miui/internal/hybrid/webkit/WebResourceResponce;
.super Landroid/webkit/WebResourceResponse;
.source "WebResourceResponce.java"


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridResourceResponse;)V
    .registers 5

    invoke-virtual {p1}, Lmiui/hybrid/HybridResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/hybrid/HybridResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/hybrid/HybridResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method
