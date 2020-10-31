.class public abstract Lcom/xiaomi/mirror/MirrorDelegate;
.super Ljava/lang/Object;
.source "MirrorDelegate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAcceptableChanged(IZ)V
.end method

.method public abstract onDelegatePermissionReleased(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDragResult(Z)V
.end method

.method public abstract onDragStart(Landroid/content/ClipData;III)V
.end method

.method public abstract onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShadowChanged(Landroid/graphics/Bitmap;)V
.end method

.method public abstract tryToShareDrag(Ljava/lang/String;ILandroid/content/ClipData;)Z
.end method
