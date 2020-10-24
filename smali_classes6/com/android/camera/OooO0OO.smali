.class public final synthetic Lcom/android/camera/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/Camera;

.field public final synthetic OooO0O0:Lcom/android/camera/data/data/global/DataItemGlobal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/OooO0OO;->OooO00o:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/OooO0OO;->OooO0O0:Lcom/android/camera/data/data/global/DataItemGlobal;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OooO0OO;->OooO00o:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/OooO0OO;->OooO0O0:Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->OooOO0o(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    return-void
.end method
