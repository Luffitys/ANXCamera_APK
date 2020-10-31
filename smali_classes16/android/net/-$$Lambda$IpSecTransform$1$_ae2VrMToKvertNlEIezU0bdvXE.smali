.class public final synthetic Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/IpSecTransform$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpSecTransform$1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;->f$0:Landroid/net/IpSecTransform$1;

    iput p2, p0, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;->f$0:Landroid/net/IpSecTransform$1;

    iget v1, p0, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/IpSecTransform$1;->lambda$onError$2$IpSecTransform$1(I)V

    return-void
.end method
