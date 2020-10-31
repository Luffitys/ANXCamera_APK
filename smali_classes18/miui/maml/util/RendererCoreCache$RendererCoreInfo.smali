.class public Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererCoreInfo"
.end annotation


# instance fields
.field public accessTime:J

.field public cacheTime:J

.field public checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

.field public r:Lmiui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    return-void
.end method
