.class public final synthetic Lcom/android/camera/module/Oooo0oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/CloneModule;

.field public final synthetic OooO0O0:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;Lcom/xiaomi/fenshen/FenShenCam$Message;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Oooo0oo;->OooO00o:Lcom/android/camera/module/CloneModule;

    iput-object p2, p0, Lcom/android/camera/module/Oooo0oo;->OooO0O0:Lcom/xiaomi/fenshen/FenShenCam$Message;

    iput p3, p0, Lcom/android/camera/module/Oooo0oo;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/Oooo0oo;->OooO00o:Lcom/android/camera/module/CloneModule;

    iget-object v1, p0, Lcom/android/camera/module/Oooo0oo;->OooO0O0:Lcom/xiaomi/fenshen/FenShenCam$Message;

    iget p0, p0, Lcom/android/camera/module/Oooo0oo;->OooO0OO:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/CloneModule;->OooO0o(Lcom/xiaomi/fenshen/FenShenCam$Message;I)V

    return-void
.end method
