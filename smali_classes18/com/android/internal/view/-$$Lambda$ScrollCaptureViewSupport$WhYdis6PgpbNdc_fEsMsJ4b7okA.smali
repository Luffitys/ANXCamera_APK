.class public final synthetic Lcom/android/internal/view/-$$Lambda$ScrollCaptureViewSupport$WhYdis6PgpbNdc_fEsMsJ4b7okA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureSession;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/-$$Lambda$ScrollCaptureViewSupport$WhYdis6PgpbNdc_fEsMsJ4b7okA;->f$0:Landroid/view/ScrollCaptureSession;

    iput-object p2, p0, Lcom/android/internal/view/-$$Lambda$ScrollCaptureViewSupport$WhYdis6PgpbNdc_fEsMsJ4b7okA;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/-$$Lambda$ScrollCaptureViewSupport$WhYdis6PgpbNdc_fEsMsJ4b7okA;->f$0:Landroid/view/ScrollCaptureSession;

    iget-object v1, p0, Lcom/android/internal/view/-$$Lambda$ScrollCaptureViewSupport$WhYdis6PgpbNdc_fEsMsJ4b7okA;->f$1:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollCaptureImageRequest$0(Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;)V

    return-void
.end method
