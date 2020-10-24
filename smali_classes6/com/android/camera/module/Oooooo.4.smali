.class public final synthetic Lcom/android/camera/module/Oooooo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DualVideoModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DualVideoModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Oooooo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Oooooo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/DualVideoModule;->OoooO00(Lio/reactivex/SingleEmitter;)V

    return-void
.end method
