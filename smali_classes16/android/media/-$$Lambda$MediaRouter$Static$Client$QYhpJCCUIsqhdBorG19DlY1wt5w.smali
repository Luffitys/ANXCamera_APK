.class public final synthetic Landroid/media/-$$Lambda$MediaRouter$Static$Client$QYhpJCCUIsqhdBorG19DlY1wt5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter$Static$Client;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter$Static$Client;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$QYhpJCCUIsqhdBorG19DlY1wt5w;->f$0:Landroid/media/MediaRouter$Static$Client;

    iput-boolean p2, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$QYhpJCCUIsqhdBorG19DlY1wt5w;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$QYhpJCCUIsqhdBorG19DlY1wt5w;->f$0:Landroid/media/MediaRouter$Static$Client;

    iget-boolean v1, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$QYhpJCCUIsqhdBorG19DlY1wt5w;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static$Client;->lambda$onGlobalA2dpChanged$3$MediaRouter$Static$Client(Z)V

    return-void
.end method
