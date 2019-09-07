.class public final synthetic Lcom/android/camera/module/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera/module/e;->ub:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/e;->ub:Z

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->k(Z)V

    return-void
.end method
