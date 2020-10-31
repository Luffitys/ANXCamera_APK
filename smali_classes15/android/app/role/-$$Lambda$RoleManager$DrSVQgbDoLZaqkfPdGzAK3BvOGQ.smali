.class public final synthetic Landroid/app/role/-$$Lambda$RoleManager$DrSVQgbDoLZaqkfPdGzAK3BvOGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleManager$DrSVQgbDoLZaqkfPdGzAK3BvOGQ;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Landroid/app/role/-$$Lambda$RoleManager$DrSVQgbDoLZaqkfPdGzAK3BvOGQ;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleManager$DrSVQgbDoLZaqkfPdGzAK3BvOGQ;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/role/-$$Lambda$RoleManager$DrSVQgbDoLZaqkfPdGzAK3BvOGQ;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/app/role/RoleManager;->lambda$createRemoteCallback$0(Landroid/os/Bundle;Ljava/util/function/Consumer;)V

    return-void
.end method
