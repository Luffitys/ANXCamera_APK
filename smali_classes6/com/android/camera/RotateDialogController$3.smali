.class Lcom/android/camera/RotateDialogController$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$negative:Ljava/lang/Runnable;

.field final synthetic val$positive:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/RotateDialogController$3;->val$positive:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/camera/RotateDialogController$3;->val$negative:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$3;->val$positive:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$3;->val$negative:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    :goto_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method
