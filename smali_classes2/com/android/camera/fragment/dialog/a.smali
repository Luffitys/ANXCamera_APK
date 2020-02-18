.class public final synthetic Lcom/android/camera/fragment/dialog/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/fragment/dialog/BaseDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/dialog/BaseDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/a;->wb:Lcom/android/camera/fragment/dialog/BaseDialogFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/a;->wb:Lcom/android/camera/fragment/dialog/BaseDialogFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
