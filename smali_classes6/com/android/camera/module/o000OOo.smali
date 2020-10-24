.class public final synthetic Lcom/android/camera/module/o000OOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DualVideoModule;

.field public final synthetic OooO0O0:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DualVideoModule;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/o000OOo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iput-object p2, p0, Lcom/android/camera/module/o000OOo;->OooO0O0:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/o000OOo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iget-object p0, p0, Lcom/android/camera/module/o000OOo;->OooO0O0:Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/DualVideoModule;->OooOOO(Landroid/widget/RelativeLayout$LayoutParams;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    return-void
.end method
