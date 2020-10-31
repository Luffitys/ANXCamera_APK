.class public final synthetic Landroid/media/-$$Lambda$MediaDrm$V4Xmxq2t4qcaWIsuRLRluTj6MT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaDrm;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaDrm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaDrm$V4Xmxq2t4qcaWIsuRLRluTj6MT0;->f$0:Landroid/media/MediaDrm;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaDrm$V4Xmxq2t4qcaWIsuRLRluTj6MT0;->f$0:Landroid/media/MediaDrm;

    check-cast p1, Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    invoke-static {v0, p1}, Landroid/media/MediaDrm;->lambda$V4Xmxq2t4qcaWIsuRLRluTj6MT0(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
