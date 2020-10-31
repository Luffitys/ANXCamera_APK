.class Landroid/hardware/display/DisplayManagerGlobal$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Landroid/view/DisplayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$1;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected recompute(Ljava/lang/Integer;)Landroid/view/DisplayInfo;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$1;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    # getter for: Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;
    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal;->access$000(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$1;->recompute(Ljava/lang/Integer;)Landroid/view/DisplayInfo;

    move-result-object p1

    return-object p1
.end method
