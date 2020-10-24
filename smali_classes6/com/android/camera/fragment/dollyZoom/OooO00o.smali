.class public final synthetic Lcom/android/camera/fragment/dollyZoom/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dollyZoom/OooO00o;->OooO00o:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    iput-boolean p2, p0, Lcom/android/camera/fragment/dollyZoom/OooO00o;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/OooO00o;->OooO00o:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    iget-boolean p0, p0, Lcom/android/camera/fragment/dollyZoom/OooO00o;->OooO0O0:Z

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->OooO0OO(ZLandroid/view/View;)V

    return-void
.end method
