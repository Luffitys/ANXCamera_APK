.class public final synthetic Lcom/android/camera/module/impl/component/OooOoO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;

.field public final synthetic OooO0O0:Z

.field public final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/OooOoO;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iput-boolean p2, p0, Lcom/android/camera/module/impl/component/OooOoO;->OooO0O0:Z

    iput p3, p0, Lcom/android/camera/module/impl/component/OooOoO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/OooOoO;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/OooOoO;->OooO0O0:Z

    iget p0, p0, Lcom/android/camera/module/impl/component/OooOoO;->OooO0OO:I

    invoke-static {v0, v1, p0}, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->OooO00o(Lcom/android/camera/module/Camera2Module;ZI)V

    return-void
.end method
