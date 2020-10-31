.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$nFhNDDZWDMvY1EMapbsu7-rktxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$nFhNDDZWDMvY1EMapbsu7-rktxg;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$nFhNDDZWDMvY1EMapbsu7-rktxg;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$nFhNDDZWDMvY1EMapbsu7-rktxg;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$nFhNDDZWDMvY1EMapbsu7-rktxg;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$setRuntimePermissionGrantStateByDeviceAdmin$3(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method
