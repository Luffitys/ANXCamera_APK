.class public final synthetic Lcom/android/camera/module/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/AmbilightModule;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/AmbilightModule;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/OooO0o;->OooO00o:Lcom/android/camera/module/AmbilightModule;

    iput-boolean p2, p0, Lcom/android/camera/module/OooO0o;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/OooO0o;->OooO00o:Lcom/android/camera/module/AmbilightModule;

    iget-boolean p0, p0, Lcom/android/camera/module/OooO0o;->OooO0O0:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/module/AmbilightModule;->OooO0o(Z)V

    return-void
.end method
