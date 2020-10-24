.class public final synthetic Lcom/android/camera/fragment/top/OooOOoo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/OooOOoo;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-boolean p2, p0, Lcom/android/camera/fragment/top/OooOOoo;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/OooOOoo;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/OooOOoo;->OooO0O0:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->OooOO0o(Z)V

    return-void
.end method
