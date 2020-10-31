.class public final synthetic Landroid/media/-$$Lambda$MediaRouter2$X3ZOrCeYw3vfbvKGRXNPtHNaJ_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2$TransferCallbackRecord;

.field public final synthetic f$1:Landroid/media/MediaRoute2Info;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter2$X3ZOrCeYw3vfbvKGRXNPtHNaJ_I;->f$0:Landroid/media/MediaRouter2$TransferCallbackRecord;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaRouter2$X3ZOrCeYw3vfbvKGRXNPtHNaJ_I;->f$1:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter2$X3ZOrCeYw3vfbvKGRXNPtHNaJ_I;->f$0:Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaRouter2$X3ZOrCeYw3vfbvKGRXNPtHNaJ_I;->f$1:Landroid/media/MediaRoute2Info;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->lambda$notifyTransferFailure$6(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
