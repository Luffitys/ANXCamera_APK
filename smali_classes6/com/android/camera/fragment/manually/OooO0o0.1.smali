.class public final synthetic Lcom/android/camera/fragment/manually/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/data/data/ComponentData;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/OooO0o0;->OooO00o:Lcom/android/camera/data/data/ComponentData;

    iput-boolean p2, p0, Lcom/android/camera/fragment/manually/OooO0o0;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/OooO0o0;->OooO00o:Lcom/android/camera/data/data/ComponentData;

    iget-boolean p0, p0, Lcom/android/camera/fragment/manually/OooO0o0;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-static {v0, p0, p1}, Lcom/android/camera/fragment/manually/FragmentManually;->OooO00o(Lcom/android/camera/data/data/ComponentData;ZLcom/android/camera/fragment/manually/FragmentManuallyExtra;)V

    return-void
.end method
