.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2$hgifIdYD8PPhrPbfzt1coc9Af6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2$TransferCallbackRecord;

.field public final synthetic f$1:Landroid/media/MediaRouter2$RoutingController;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter2$hgifIdYD8PPhrPbfzt1coc9Af6w;->f$0:Landroid/media/MediaRouter2$TransferCallbackRecord;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaRouter2$hgifIdYD8PPhrPbfzt1coc9Af6w;->f$1:Landroid/media/MediaRouter2$RoutingController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter2$hgifIdYD8PPhrPbfzt1coc9Af6w;->f$0:Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaRouter2$hgifIdYD8PPhrPbfzt1coc9Af6w;->f$1:Landroid/media/MediaRouter2$RoutingController;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->lambda$notifyStop$7(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method
