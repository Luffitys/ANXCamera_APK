.class public final synthetic Lcom/android/camera/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Lcom/android/camera/Camera;

.field private final synthetic vb:Z

.field private final synthetic wb:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/a;->ub:Lcom/android/camera/Camera;

    iput-boolean p2, p0, Lcom/android/camera/a;->vb:Z

    iput-boolean p3, p0, Lcom/android/camera/a;->wb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/a;->ub:Lcom/android/camera/Camera;

    iget-boolean v1, p0, Lcom/android/camera/a;->vb:Z

    iget-boolean p0, p0, Lcom/android/camera/a;->wb:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/Camera;->b(ZZ)V

    return-void
.end method
