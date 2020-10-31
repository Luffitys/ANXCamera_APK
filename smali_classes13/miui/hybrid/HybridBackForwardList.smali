.class public abstract Lmiui/hybrid/HybridBackForwardList;
.super Ljava/lang/Object;
.source "HybridBackForwardList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentItem()Lmiui/hybrid/HybridHistoryItem;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemAtIndex(I)Lmiui/hybrid/HybridHistoryItem;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
