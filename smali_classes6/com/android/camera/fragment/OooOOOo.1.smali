.class public final synthetic Lcom/android/camera/fragment/OooOOOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public final synthetic OooO0O0:Z

.field public final synthetic OooO0OO:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/OooOOOo;->OooO00o:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-boolean p2, p0, Lcom/android/camera/fragment/OooOOOo;->OooO0O0:Z

    iput-object p3, p0, Lcom/android/camera/fragment/OooOOOo;->OooO0OO:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/OooOOOo;->OooO00o:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iget-boolean v1, p0, Lcom/android/camera/fragment/OooOOOo;->OooO0O0:Z

    iget-object p0, p0, Lcom/android/camera/fragment/OooOOOo;->OooO0OO:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->OooOOOo(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V

    return-void
.end method
