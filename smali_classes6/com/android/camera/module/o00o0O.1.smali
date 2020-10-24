.class public final synthetic Lcom/android/camera/module/o00o0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera/module/o00o0O;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/o00o0O;->OooO00o:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {p0, p1}, Lcom/android/camera/module/DualVideoModule;->Oooo0o(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
