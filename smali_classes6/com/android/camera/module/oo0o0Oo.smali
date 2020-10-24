.class public final synthetic Lcom/android/camera/module/oo0o0Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DualVideoModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DualVideoModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/oo0o0Oo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/oo0o0Oo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/DualVideoModule;->OooOOo(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
