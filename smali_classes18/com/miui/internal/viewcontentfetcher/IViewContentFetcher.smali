.class public interface abstract Lcom/miui/internal/viewcontentfetcher/IViewContentFetcher;
.super Ljava/lang/Object;
.source "IViewContentFetcher.java"


# virtual methods
.method public abstract createFetcher(Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/contentcatcher/sdk/Token;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchViewContent(Landroid/view/View;I)Landroid/os/Bundle;
.end method

.method public abstract fetchWebViewBitmap(Landroid/view/View;I)Landroid/os/Bundle;
.end method

.method public abstract reservedFunction(Ljava/util/Map;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
