.class public final synthetic Lcom/android/camera/module/OoooOoo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/DualVideoModule;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DualVideoModule;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/OoooOoo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iput-boolean p2, p0, Lcom/android/camera/module/OoooOoo;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/OoooOoo;->OooO00o:Lcom/android/camera/module/DualVideoModule;

    iget-boolean p0, p0, Lcom/android/camera/module/OoooOoo;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/DualVideoModule;->OoooOo0(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
