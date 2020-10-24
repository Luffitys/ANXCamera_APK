.class public final synthetic Lcom/android/camera/module/OooOOOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;

.field public final synthetic OooO0O0:F

.field public final synthetic OooO0OO:F

.field public final synthetic OooO0Oo:I

.field public final synthetic OooO0o0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/OooOOOo;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/OooOOOo;->OooO0O0:F

    iput p3, p0, Lcom/android/camera/module/OooOOOo;->OooO0OO:F

    iput p4, p0, Lcom/android/camera/module/OooOOOo;->OooO0Oo:I

    iput p5, p0, Lcom/android/camera/module/OooOOOo;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public final onOptionClick(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/OooOOOo;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iget v1, p0, Lcom/android/camera/module/OooOOOo;->OooO0O0:F

    iget v2, p0, Lcom/android/camera/module/OooOOOo;->OooO0OO:F

    iget v3, p0, Lcom/android/camera/module/OooOOOo;->OooO0Oo:I

    iget v4, p0, Lcom/android/camera/module/OooOOOo;->OooO0o0:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/Camera2Module;->OooOOoo(FFIII)V

    return-void
.end method
