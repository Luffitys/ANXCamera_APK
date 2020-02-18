.class public final synthetic Lcom/android/camera2/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic Ab:Z

.field private final synthetic wb:Lcom/android/camera2/MiCamera2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/MiCamera2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/d;->wb:Lcom/android/camera2/MiCamera2;

    iput-boolean p2, p0, Lcom/android/camera2/d;->Ab:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/d;->wb:Lcom/android/camera2/MiCamera2;

    iget-boolean p0, p0, Lcom/android/camera2/d;->Ab:Z

    invoke-virtual {v0, p0}, Lcom/android/camera2/MiCamera2;->x(Z)V

    return-void
.end method
