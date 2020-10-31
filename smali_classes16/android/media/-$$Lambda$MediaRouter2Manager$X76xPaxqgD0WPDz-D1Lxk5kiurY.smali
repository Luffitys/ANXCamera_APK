.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2Manager$X76xPaxqgD0WPDz-D1Lxk5kiurY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2Manager;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2Manager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$X76xPaxqgD0WPDz-D1Lxk5kiurY;->f$0:Landroid/media/MediaRouter2Manager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter2Manager$X76xPaxqgD0WPDz-D1Lxk5kiurY;->f$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v0}, Landroid/media/MediaRouter2Manager;->lambda$X76xPaxqgD0WPDz-D1Lxk5kiurY(Landroid/media/MediaRouter2Manager;)Landroid/media/MediaRouter2Manager$Client;

    return-void
.end method
