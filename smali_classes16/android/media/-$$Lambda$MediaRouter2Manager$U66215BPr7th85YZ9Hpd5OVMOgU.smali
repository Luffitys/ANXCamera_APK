.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2Manager$U66215BPr7th85YZ9Hpd5OVMOgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic f$1:Landroid/media/RoutingSessionInfo;

.field public final synthetic f$2:Landroid/media/MediaRoute2Info;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$U66215BPr7th85YZ9Hpd5OVMOgU;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$U66215BPr7th85YZ9Hpd5OVMOgU;->f$1:Landroid/media/RoutingSessionInfo;

    iput-object p3, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$U66215BPr7th85YZ9Hpd5OVMOgU;->f$2:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$U66215BPr7th85YZ9Hpd5OVMOgU;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$U66215BPr7th85YZ9Hpd5OVMOgU;->f$1:Landroid/media/RoutingSessionInfo;

    iget-object v2, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$U66215BPr7th85YZ9Hpd5OVMOgU;->f$2:Landroid/media/MediaRoute2Info;

    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2Manager;->lambda$notifyTransferFailed$7(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
