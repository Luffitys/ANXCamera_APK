.class public final synthetic Landroid/view/-$$Lambda$SurfaceView$RemoteAccessibilityEmbeddedConnection$MJCC8_qn1j4IJab7lJYkrpYVv74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$SurfaceView$RemoteAccessibilityEmbeddedConnection$MJCC8_qn1j4IJab7lJYkrpYVv74;->f$0:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$$Lambda$SurfaceView$RemoteAccessibilityEmbeddedConnection$MJCC8_qn1j4IJab7lJYkrpYVv74;->f$0:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->lambda$binderDied$0$SurfaceView$RemoteAccessibilityEmbeddedConnection()V

    return-void
.end method
