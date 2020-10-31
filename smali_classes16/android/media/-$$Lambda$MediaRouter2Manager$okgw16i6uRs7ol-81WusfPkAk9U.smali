.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2Manager$okgw16i6uRs7ol-81WusfPkAk9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$okgw16i6uRs7ol-81WusfPkAk9U;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$okgw16i6uRs7ol-81WusfPkAk9U;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$okgw16i6uRs7ol-81WusfPkAk9U;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$okgw16i6uRs7ol-81WusfPkAk9U;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Manager;->lambda$notifyRoutesRemoved$1(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V

    return-void
.end method
