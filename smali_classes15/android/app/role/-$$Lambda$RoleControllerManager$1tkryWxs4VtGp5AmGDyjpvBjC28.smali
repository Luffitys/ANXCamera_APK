.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$1tkryWxs4VtGp5AmGDyjpvBjC28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$1tkryWxs4VtGp5AmGDyjpvBjC28;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$1tkryWxs4VtGp5AmGDyjpvBjC28;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$1tkryWxs4VtGp5AmGDyjpvBjC28;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/role/-$$Lambda$RoleControllerManager$1tkryWxs4VtGp5AmGDyjpvBjC28;->f$1:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Landroid/app/role/RoleControllerManager;->lambda$propagateCallback$9(Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    return-void
.end method
