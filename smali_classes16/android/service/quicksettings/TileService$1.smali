.class Landroid/service/quicksettings/TileService$1;
.super Ljava/lang/Object;
.source "TileService.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quicksettings/TileService;->showDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method constructor <init>(Landroid/service/quicksettings/TileService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$100(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->access$000(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onDialogHidden(Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    return-void
.end method
