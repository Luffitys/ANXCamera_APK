.class public final synthetic Landroid/media/-$$Lambda$MediaDrm$8rRollK1F3eENvuaBGoS8u_-heQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaDrm;

.field public final synthetic f$1:Landroid/media/MediaDrm$OnEventListener;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnEventListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaDrm$8rRollK1F3eENvuaBGoS8u_-heQ;->f$0:Landroid/media/MediaDrm;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaDrm$8rRollK1F3eENvuaBGoS8u_-heQ;->f$1:Landroid/media/MediaDrm$OnEventListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaDrm$8rRollK1F3eENvuaBGoS8u_-heQ;->f$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaDrm$8rRollK1F3eENvuaBGoS8u_-heQ;->f$1:Landroid/media/MediaDrm$OnEventListener;

    check-cast p1, Landroid/media/MediaDrm$ListenerArgs;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->lambda$createOnEventListener$0$MediaDrm(Landroid/media/MediaDrm$OnEventListener;Landroid/media/MediaDrm$ListenerArgs;)V

    return-void
.end method
