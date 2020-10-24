.class public final synthetic Lcom/android/camera/fragment/ambilight/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

.field public final synthetic OooO0O0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/OooO0OO;->OooO00o:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    iput-object p2, p0, Lcom/android/camera/fragment/ambilight/OooO0OO;->OooO0O0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/OooO0OO;->OooO00o:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    iget-object p0, p0, Lcom/android/camera/fragment/ambilight/OooO0OO;->OooO0O0:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->OooO0o(Landroid/view/View;)V

    return-void
.end method
