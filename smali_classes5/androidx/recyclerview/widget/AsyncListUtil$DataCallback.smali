.class public abstract Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fillData([Ljava/lang/Object;II)V
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public getMaxCachedTiles()I
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/16 p0, 0xa

    return p0
.end method

.method public recycleData([Ljava/lang/Object;I)V
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public abstract refreshData()I
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
