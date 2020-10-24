.class public final synthetic Lcom/android/camera/module/OoooOOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:I

.field public final synthetic OooO0Oo:I

.field public final synthetic OooO0o0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/OoooOOo;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput p2, p0, Lcom/android/camera/module/OoooOOo;->OooO0O0:I

    iput p3, p0, Lcom/android/camera/module/OoooOOo;->OooO0OO:I

    iput p4, p0, Lcom/android/camera/module/OoooOOo;->OooO0Oo:I

    iput p5, p0, Lcom/android/camera/module/OoooOOo;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/OoooOOo;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget v1, p0, Lcom/android/camera/module/OoooOOo;->OooO0O0:I

    iget v2, p0, Lcom/android/camera/module/OoooOOo;->OooO0OO:I

    iget v3, p0, Lcom/android/camera/module/OoooOOo;->OooO0Oo:I

    iget p0, p0, Lcom/android/camera/module/OoooOOo;->OooO0o0:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/camera/module/DollyZoomModule;->OooO0Oo(IIII)V

    return-void
.end method
