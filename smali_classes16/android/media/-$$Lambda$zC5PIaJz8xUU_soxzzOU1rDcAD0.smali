.class public final synthetic Landroid/media/-$$Lambda$zC5PIaJz8xUU_soxzzOU1rDcAD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2$RoutingController;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$zC5PIaJz8xUU_soxzzOU1rDcAD0;->f$0:Landroid/media/MediaRouter2$RoutingController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/-$$Lambda$zC5PIaJz8xUU_soxzzOU1rDcAD0;->f$0:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->release()V

    return-void
.end method
