.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;Landroid/net/Uri;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$0:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$1:Landroid/net/Uri;

    iput p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$2:I

    iput p4, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$0:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$1:Landroid/net/Uri;

    iget v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$2:I

    iget v3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ContentPreviewCoordinator$EH5snVfTFw-fgFU-zp25bhcH0ZY;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->lambda$loadUriIntoView$0$ChooserActivityForCts$ContentPreviewCoordinator(Landroid/net/Uri;II)V

    return-void
.end method
