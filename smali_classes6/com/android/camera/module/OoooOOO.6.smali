.class public final synthetic Lcom/android/camera/module/OoooOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field public final synthetic OooO0O0:F

.field public final synthetic OooO0OO:I

.field public final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/OoooOOO;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput p2, p0, Lcom/android/camera/module/OoooOOO;->OooO0O0:F

    iput p3, p0, Lcom/android/camera/module/OoooOOO;->OooO0OO:I

    iput p4, p0, Lcom/android/camera/module/OoooOOO;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/OoooOOO;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget v1, p0, Lcom/android/camera/module/OoooOOO;->OooO0O0:F

    iget v2, p0, Lcom/android/camera/module/OoooOOO;->OooO0OO:I

    iget p0, p0, Lcom/android/camera/module/OoooOOO;->OooO0Oo:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/module/DollyZoomModule;->OooOO0(FII)V

    return-void
.end method
