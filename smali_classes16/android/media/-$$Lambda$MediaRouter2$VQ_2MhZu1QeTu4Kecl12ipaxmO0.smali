.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2$VQ_2MhZu1QeTu4Kecl12ipaxmO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2$RouteCallbackRecord;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter2$VQ_2MhZu1QeTu4Kecl12ipaxmO0;->f$0:Landroid/media/MediaRouter2$RouteCallbackRecord;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaRouter2$VQ_2MhZu1QeTu4Kecl12ipaxmO0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter2$VQ_2MhZu1QeTu4Kecl12ipaxmO0;->f$0:Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaRouter2$VQ_2MhZu1QeTu4Kecl12ipaxmO0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->lambda$notifyRoutesChanged$4(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    return-void
.end method
