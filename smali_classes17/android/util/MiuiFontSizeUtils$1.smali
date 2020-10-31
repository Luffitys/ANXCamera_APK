.class Landroid/util/MiuiFontSizeUtils$1;
.super Ljava/lang/Object;
.source "MiuiFontSizeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/MiuiFontSizeUtils;->clearForcedDisplayDensity(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$displayId:I

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    iput p1, p0, Landroid/util/MiuiFontSizeUtils$1;->val$displayId:I

    iput p2, p0, Landroid/util/MiuiFontSizeUtils$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget v1, p0, Landroid/util/MiuiFontSizeUtils$1;->val$displayId:I

    iget v2, p0, Landroid/util/MiuiFontSizeUtils$1;->val$userHandle:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_1b

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    :catch_11
    move-exception v0

    # getter for: Landroid/util/MiuiFontSizeUtils;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/util/MiuiFontSizeUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to clear forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    nop

    :goto_1c
    return-void
.end method
