.class public final synthetic Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureClient;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureClient;JLandroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;->f$0:Landroid/view/ScrollCaptureClient;

    iput-wide p2, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;->f$1:J

    iput-object p4, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;->f$0:Landroid/view/ScrollCaptureClient;

    iget-wide v1, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;->f$1:J

    iget-object v3, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$jB-gZzHC6CVXS20ua5gOXB2VBpE;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ScrollCaptureClient;->lambda$onRequestImageCompleted$3$ScrollCaptureClient(JLandroid/graphics/Rect;)V

    return-void
.end method
