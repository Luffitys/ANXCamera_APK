.class public Lcom/xiaomi/camera/device/callable/ShotBoostCallable;
.super Lcom/xiaomi/camera/device/callable/CameraCallable;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotBoost"


# instance fields
.field private mParam:Ljava/util/function/Consumer;

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/camera/device/callable/CameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V

    iput-boolean p2, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mSuccess:Z

    iput-object p3, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mParam:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/camera/device/callable/CallableReturn;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ShotBoost"

    return-object p0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mParam:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    const-string v0, "ShotBoost"

    const-string v1, "shotboost enable UI"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mParam:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;->mSuccess:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
