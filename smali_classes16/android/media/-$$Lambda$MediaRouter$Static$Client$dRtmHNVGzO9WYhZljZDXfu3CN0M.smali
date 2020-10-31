.class public final synthetic Landroid/media/-$$Lambda$MediaRouter$Static$Client$dRtmHNVGzO9WYhZljZDXfu3CN0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter$Static$Client;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter$Static$Client;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$dRtmHNVGzO9WYhZljZDXfu3CN0M;->f$0:Landroid/media/MediaRouter$Static$Client;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$dRtmHNVGzO9WYhZljZDXfu3CN0M;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$dRtmHNVGzO9WYhZljZDXfu3CN0M;->f$0:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$dRtmHNVGzO9WYhZljZDXfu3CN0M;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static$Client;->lambda$onSelectedRouteChanged$2$MediaRouter$Static$Client(Ljava/lang/String;)V

    return-void
.end method
