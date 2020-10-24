.class public Lcom/miui/internal/hybrid/webkit/WebBackForwardList;
.super Lmiui/hybrid/HybridBackForwardList;
.source ""


# instance fields
.field private mWebBackForwardList:Landroid/webkit/WebBackForwardList;


# direct methods
.method public constructor <init>(Landroid/webkit/WebBackForwardList;)V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/HybridBackForwardList;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentItem()Lmiui/hybrid/HybridHistoryItem;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    return-object v0
.end method

.method public getItemAtIndex(I)Lmiui/hybrid/HybridHistoryItem;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {p0, p1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V

    return-object v0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result p0

    return p0
.end method
