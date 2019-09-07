.class public final synthetic Lcom/android/camera/fragment/top/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ub:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field private final synthetic vb:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field private final synthetic wb:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/i;->ub:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-object p2, p0, Lcom/android/camera/fragment/top/i;->vb:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iput-boolean p3, p0, Lcom/android/camera/fragment/top/i;->wb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/i;->ub:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iget-object v1, p0, Lcom/android/camera/fragment/top/i;->vb:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/i;->wb:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->a(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V

    return-void
.end method
