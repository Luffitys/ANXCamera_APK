.class public final synthetic Lcom/android/camera/fragment/dialog/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/fragment/dialog/ThermalDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/dialog/ThermalDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/l;->wb:Lcom/android/camera/fragment/dialog/ThermalDialogFragment;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/l;->wb:Lcom/android/camera/fragment/dialog/ThermalDialogFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/dialog/ThermalDialogFragment;->a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
