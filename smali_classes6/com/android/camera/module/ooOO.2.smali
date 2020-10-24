.class public final synthetic Lcom/android/camera/module/ooOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DualVideoModule;

.field public final synthetic OooO0O0:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field public final synthetic OooO0OO:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DualVideoModule;Lcom/android/camera/protocol/ModeProtocol$TopAlert;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/ooOO;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iput-object p2, p0, Lcom/android/camera/module/ooOO;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object p3, p0, Lcom/android/camera/module/ooOO;->OooO0OO:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/ooOO;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iget-object v1, p0, Lcom/android/camera/module/ooOO;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget-object p0, p0, Lcom/android/camera/module/ooOO;->OooO0OO:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/DualVideoModule;->OooOO0o(Lcom/android/camera/protocol/ModeProtocol$TopAlert;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method
