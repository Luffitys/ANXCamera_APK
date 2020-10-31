.class public final synthetic Landroid/net/-$$Lambda$NattSocketKeepalive$60CcdfQ34rdXme76td_j4bbtPHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NattSocketKeepalive;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NattSocketKeepalive;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NattSocketKeepalive$60CcdfQ34rdXme76td_j4bbtPHU;->f$0:Landroid/net/NattSocketKeepalive;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/-$$Lambda$NattSocketKeepalive$60CcdfQ34rdXme76td_j4bbtPHU;->f$0:Landroid/net/NattSocketKeepalive;

    invoke-virtual {v0}, Landroid/net/NattSocketKeepalive;->lambda$stopImpl$1$NattSocketKeepalive()V

    return-void
.end method
