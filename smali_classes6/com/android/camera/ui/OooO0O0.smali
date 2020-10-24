.class public final synthetic Lcom/android/camera/ui/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/ui/DragLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/DragLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/OooO0O0;->OooO00o:Lcom/android/camera/ui/DragLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/OooO0O0;->OooO00o:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/DragLayout;->OooO0O0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
