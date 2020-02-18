.class public final synthetic Lcom/android/camera/module/loader/camera2/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic wb:Lcom/android/camera/module/loader/camera2/Camera2OpenManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/a;->wb:Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/a;->wb:Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->d(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
