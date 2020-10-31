.class public Lcom/miui/internal/hybrid/webkit/WebHistoryItem;
.super Lmiui/hybrid/HybridHistoryItem;
.source "WebHistoryItem.java"


# instance fields
.field private mWebHistoryItem:Landroid/webkit/WebHistoryItem;


# direct methods
.method public constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .registers 2

    invoke-direct {p0}, Lmiui/hybrid/HybridHistoryItem;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    return-void
.end method


# virtual methods
.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;->mWebHistoryItem:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
